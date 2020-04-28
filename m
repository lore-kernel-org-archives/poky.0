Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
 by mx.groups.io with SMTP id smtpd.web12.7884.1588081975247854225
 for <poky@lists.yoctoproject.org>;
 Tue, 28 Apr 2020 06:53:00 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=j9kHM6Ma;
 spf=pass (domain: gmail.com, ip: 209.85.128.42, mailfrom: breno.debian@gmail.com)
Received: by mail-wm1-f42.google.com with SMTP id x4so2872303wmj.1
        for <poky@lists.yoctoproject.org>; Tue, 28 Apr 2020 06:52:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=to:from:subject:message-id:date:user-agent:mime-version
         :content-language:content-transfer-encoding;
        bh=zVILldWZ7fkNAgkfBQS5b2pldD18ei3r4iiPAfbq0Zw=;
        b=j9kHM6MaGMt5n8Ww1+khADwnK5mzB+ejJflMaRtCrPVs6xEcQ5amf01ps4CpS32VSC
         zzp2oJRwLRREHGtRQ+xujR1uVfxxW1EggxnOpZaMK23OFjuiOGGPmr2/f8anJowGGPNY
         jwSqG9gGXbVwzYebeIOg8lZmZe512l1CUn3+UlyLvRe4PK3Kx3NENkqnJLzUAx1cFZrk
         G3UZw8fjnhc3QHCxQqg79f0AjpmzaHUBb58u9ZJN3FBntpO5aNeKpK3SlJloyelj+yHW
         iQIXvNatXRSR4djT7GtP8OCSG31oBiyFBV/ajKa/8w7wMdb012ST46dNr0qXtwkzs2yf
         ksrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:to:from:subject:message-id:date:user-agent
         :mime-version:content-language:content-transfer-encoding;
        bh=zVILldWZ7fkNAgkfBQS5b2pldD18ei3r4iiPAfbq0Zw=;
        b=hnfFzKQfJlgopT4AabRFgxbDjPG1SkgspjV6E4K/kVKlUvE5UInuGnojgaT+tf0mO+
         VTjt+b0W1L6OA8dS/qYJpcO/DfMwvHevQXoVNoqiSMDF8q2B4Oe/2zEz5tlmsIRCKSBE
         zkEjgD53AhQopnoPEk4FsgAEzTDpVJUX/PJhEsXH+CODdJGhg5QiXCkvaksGkgqiXV9m
         NsbrzuBShUQyAVN3w35zLGiJRt4B4Yks6CNvDuU2ryi39RLnnEuXAIF4ZjwJ0VzIYikr
         lnV8PztBeIyuJ4pP/Fs4dsLSHKAV2CtEmaHHMgi640yZLipspxPiAib5NnXr6NJEqzU0
         geVQ==
X-Gm-Message-State: AGi0PuYcvDam8GYpM288aYupuSjghGD2/pgh6F7g76BDAlTkT73oHkGK
	94gnHc3rWLIxVqxUMzKKxlhg0AWY
X-Google-Smtp-Source: APiQypI/9ZMLveMfxBuI5/Iaaw8vRjm8D7vVL1FxWFjlF5AxdCD8U7ohtY61z9tO0KUn05mRHMQmwA==
X-Received: by 2002:a1c:ac44:: with SMTP id v65mr4808470wme.33.1588081973505;
        Tue, 28 Apr 2020 06:52:53 -0700 (PDT)
Return-Path: <breno.debian@gmail.com>
Received: from ?IPv6:2620:10d:c0d2:1103:1c3a:dd3b:c5bd:d95e? ([2620:10d:c093:400::5:78e5])
        by smtp.gmail.com with ESMTPSA id c190sm3533082wme.4.2020.04.28.06.52.52
        for <poky@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 28 Apr 2020 06:52:53 -0700 (PDT)
To: poky@lists.yoctoproject.org
From: breno.debian@gmail.com
Subject: [PATCH] devtool: Add IPv6 deploy targets targets
Message-ID: <42a9297b-911b-6e38-076f-2a542249ffaa@debian.org>
Date: Tue, 28 Apr 2020 14:52:52 +0100
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:68.0)
 Gecko/20100101 Thunderbird/68.7.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit

From: Breno Leitao <leit@fb.com>

Unfortunately devtool is not able to deploy (and undeploy) into IPv6
hosts.

This patch simply adds a way to use IPv6 target address similarly to
ssh/scp, as foo@[xxxx:yyyy::zzzz]:/destdir.

In order to do it, I've created a function that parses the hostname,
user and destdir, and then create a target_ssh (for ssh like parameter
 -- foo@xxx:yyyy::zzz) and target_scp for scp paramers as
 -- foo@[xxxx:yyyy::zzz]:/destdir. The urlparsing is done by urlparse
module and ip version discovery is done by ipaddress module.

This is the tests I have been using to validate my patch

IPV4_FORMATS="
      root@11.11.11.2:/tmp
      root@11.11.11.2
      11.11.11.2:/tmp
      11.11.11.2
      "

IPV6_FORMATS="
      root@[2620:10d:c0bb:403:dac4:97ff:feda:3325]:/tmp
      root@[2620:10d:c0bb:403:dac4:97ff:feda:3325]
      [2620:10d:c0bb:403:dac4:97ff:feda:3325]:/tmp
      [2620:10d:c0bb:403:dac4:97ff:feda:3325]
      "

HOSTNAMES="
      root@foo.bar:/tmp
      root@foo.bar
      foo.bar:/tmp
      foo.bar
      "

for I in $IPV6_FORMATS
do
  devtool deploy-target -6 -s mypkg ${I}
  devtool undeploy-target -6 -s mypkg ${I}
done

for I in $HOSTNAMES
do
  devtool deploy-target -s mypkg ${I}
  devtool undeploy-target -s mypkg ${I}
done

for I in $IPV4_FORMATS
do
  devtool deploy-target -s mypkg ${I}
  devtool undeploy-target -s mypkg ${I}
done
---
 scripts/lib/devtool/deploy.py | 61 +++++++++++++++++++++++++++--------
 1 file changed, 47 insertions(+), 14 deletions(-)

diff --git a/scripts/lib/devtool/deploy.py b/scripts/lib/devtool/deploy.py
index 6a997735fc..1580256e2a 100644
--- a/scripts/lib/devtool/deploy.py
+++ b/scripts/lib/devtool/deploy.py
@@ -11,6 +11,8 @@ import os
 import shutil
 import subprocess
 import tempfile
+import urllib
+import ipaddress
 
 import bb.utils
 import argparse_oe
@@ -134,6 +136,18 @@ def _prepare_remote_script(deploy, verbose=False, dryrun=False, undeployall=Fals
     return '\n'.join(lines)
 
 
+def parse_ip(args):
+    t = urllib.parse.urlparse("ssh://" + args.target)
+
+    try:
+        ip = ipaddress.ip_address(t.hostname)
+        version = ip.version
+    except ValueError:
+        # hostname instead of ip return version  0
+        version = None;
+
+    return t.username, t.hostname, t.path, version
+
 
 def deploy(args, config, basepath, workspace):
     """Entry point for the devtool 'deploy' subcommand"""
@@ -143,14 +157,7 @@ def deploy(args, config, basepath, workspace):
 
     check_workspace_recipe(workspace, args.recipename, checksrc=False)
 
-    try:
-        host, destdir = args.target.split(':')
-    except ValueError:
-        destdir = '/'
-    else:
-        args.target = host
-    if not destdir.endswith('/'):
-        destdir += '/'
+    user, host, destdir, ipversion = parse_ip(args)
 
     tinfoil = setup_tinfoil(basepath=basepath)
     try:
@@ -235,16 +242,30 @@ def deploy(args, config, basepath, workspace):
                 f.write('%d\n' % ftotalsize)
                 for fpath, fsize in filelist:
                     f.write('%s %d\n' % (fpath, fsize))
+
+            # Need to generate target as a scp format
+            if ipversion == 6:
+                target_scp = "[%s]:%s" % (host, os.path.dirname(tmpscript))
+            else:
+                target_scp = "%s:%s" % (host, os.path.dirname(tmpscript))
+            if user:
+                target_scp = "%s@%s" % (user, target_scp)
+
             # Copy them to the target
-            ret = subprocess.call("scp %s %s %s %s/* %s:%s" % (scp_sshexec, scp_port, extraoptions, tmpdir, args.target, os.path.dirname(tmpscript)), shell=True)
+            ret = subprocess.call("scp %s %s %s %s/* %s" % (scp_sshexec, scp_port, extraoptions, tmpdir, target_scp), shell=True)
             if ret != 0:
                 raise DevtoolError('Failed to copy script to %s - rerun with -s to '
                                 'get a complete error message' % args.target)
         finally:
             shutil.rmtree(tmpdir)
 
+        if user:
+            target_ssh = "%s@%s" % (user, host)
+        else:
+            target_ssh = host
+
         # Now run the script
-        ret = exec_fakeroot(rd, 'tar cf - . | %s  %s %s %s \'sh %s %s %s %s\'' % (ssh_sshexec, ssh_port, extraoptions, args.target, tmpscript, args.recipename, destdir, tmpfilelist), cwd=recipe_outdir, shell=True)
+        ret = exec_fakeroot(rd, 'tar cf - . | %s  %s %s %s \'sh %s %s %s %s\'' % (ssh_sshexec, ssh_port, extraoptions, target_ssh, tmpscript, args.recipename, destdir, tmpfilelist), cwd=recipe_outdir, shell=True)
         if ret != 0:
             raise DevtoolError('Deploy failed - rerun with -s to get a complete '
                             'error message')
@@ -268,6 +289,8 @@ def undeploy(args, config, basepath, workspace):
     elif not args.recipename and not args.all:
         raise argparse_oe.ArgumentUsageError('If you don\'t specify a recipe, you must specify -a/--all', 'undeploy-target')
 
+    user, host, destdir, ipversion = parse_ip(args)
+
     extraoptions = ''
     if args.no_host_check:
         extraoptions += '-o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no'
@@ -285,8 +308,6 @@ def undeploy(args, config, basepath, workspace):
         scp_port = "-P %s" % args.port
         ssh_port = "-p %s" % args.port
 
-    args.target = args.target.split(':')[0]
-
     tmpdir = tempfile.mkdtemp(prefix='devtool')
     try:
         tmpscript = '/tmp/devtool_undeploy.sh'
@@ -294,16 +315,28 @@ def undeploy(args, config, basepath, workspace):
         # Write out the script to a file
         with open(os.path.join(tmpdir, os.path.basename(tmpscript)), 'w') as f:
             f.write(shellscript)
+
+        # Format for scp
+        if ipversion == 6:
+            target_scp = "[%s]:%s" % (host, os.path.dirname(tmpscript))
+        else:
+            target_scp = "%s:%s" % (host, os.path.dirname(tmpscript))
+        if user:
+            target_scp = "%s@%s" % (user, target_scp)
+
         # Copy it to the target
-        ret = subprocess.call("scp %s %s %s %s/* %s:%s" % (scp_sshexec, scp_port, extraoptions, tmpdir, args.target, os.path.dirname(tmpscript)), shell=True)
+        ret = subprocess.call("scp %s %s %s %s/* %s" % (scp_sshexec, scp_port, extraoptions, tmpdir, target_scp), shell=True)
         if ret != 0:
             raise DevtoolError('Failed to copy script to %s - rerun with -s to '
                                 'get a complete error message' % args.target)
     finally:
         shutil.rmtree(tmpdir)
 
+    target_ssh = host
+    if user:
+        target_ssh = "%s@%s" % (user, target_ssh)
     # Now run the script
-    ret = subprocess.call('%s %s %s %s \'sh %s %s\'' % (ssh_sshexec, ssh_port, extraoptions, args.target, tmpscript, args.recipename), shell=True)
+    ret = subprocess.call('%s %s %s %s \'sh %s %s\'' % (ssh_sshexec, ssh_port, extraoptions, target_ssh, tmpscript, args.recipename), shell=True)
     if ret != 0:
         raise DevtoolError('Undeploy failed - rerun with -s to get a complete '
                            'error message')
-- 
2.24.1

