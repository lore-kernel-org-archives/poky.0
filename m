Return-Path: <richard.purdie@linuxfoundation.org>
Received: from dan.rpsys.net (dan.rpsys.net [93.97.175.187])
	by mx1.pokylinux.org (Postfix) with ESMTP id 7F8FA4C80FA4
	for <poky@yoctoproject.org>; Mon, 31 Jan 2011 18:28:15 -0600 (CST)
Received: from localhost (dan.rpsys.net [127.0.0.1])
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	p110UI53025011
	for <poky@yoctoproject.org>; Tue, 1 Feb 2011 00:30:18 GMT
X-Virus-Scanned: Debian amavisd-new at dan.rpsys.net
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id nJO9hv2boyEP for <poky@yoctoproject.org>;
	Tue,  1 Feb 2011 00:30:18 +0000 (GMT)
Received: from [192.168.1.42] (tim [93.97.173.237]) (authenticated bits=0)
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	p110UBIf025007
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NOT)
	for <poky@yoctoproject.org>; Tue, 1 Feb 2011 00:30:12 GMT
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: poky <poky@yoctoproject.org>
Date: Tue, 01 Feb 2011 00:28:00 +0000
Message-ID: <1296520080.13501.15996.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Subject: Quick hack for profiling tasks
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 01 Feb 2011 00:28:15 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

Hi,

One thing that is bugging me whilst I've been debugging some issues
we're having with the libc/libgcc package dependency issue is how long
do_package takes for libc. The question is where does it spend the time?
Answer, I have no idea.

I hacked together the patch below to find out. Its ugly and uses the
boilerplate profiling code from cooker, cut and pasted here to profile
the actual tasks that run.

I've yet to look at the results but it should allow us to optimise the
python tasks a bit if we can see where they spend time. I'm hoping this
lets others look at that too and also it give us some hints as to how we
might improve the core when turning on profiling in bitbake.

Cheers,

Richard


diff --git a/bitbake/lib/bb/build.py b/bitbake/lib/bb/build.py
index 42d1726..02c0a08 100644
--- a/bitbake/lib/bb/build.py
+++ b/bitbake/lib/bb/build.py
@@ -365,7 +365,36 @@ def exec_task(fn, task, d):
         if d.getVarFlag(task, "quieterrors") is not None:
             quieterr = True
 
-        return _exec_task(fn, task, d, quieterr)
+        profbasename = os.path.basename(fn) + "-" + task
+        try:
+            import cProfile as profile
+        except:
+            import profile
+        prof = profile.Profile()
+
+        ret = profile.Profile.runcall(prof, _exec_task, fn, task, d, quieterr)
+
+        prof.dump_stats("profile-%s.log" % (profbasename))
+
+        # Redirect stdout to capture profile information
+        pout = open('profile-%s.log.processed' % (profbasename), 'w')
+        so = sys.stdout.fileno()
+        orig_so = os.dup(sys.stdout.fileno())
+        os.dup2(pout.fileno(), so)
+   
+        import pstats
+        p = pstats.Stats('profile-%s.log' % (profbasename))
+        p.sort_stats('time')
+        p.print_stats()
+        p.print_callers()
+        p.sort_stats('cumulative')
+        p.print_stats()
+
+        os.dup2(orig_so, so)
+        pout.flush()
+        pout.close()  
+
+        return ret
     except Exception:
         from traceback import format_exc
         if not quieterr:


