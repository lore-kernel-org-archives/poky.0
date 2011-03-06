Return-Path: <mbalcells@gmail.com>
Received: from mail-px0-f176.google.com (mail-px0-f176.google.com
	[209.85.212.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id 2819D4C80093
	for <poky@yoctoproject.org>; Sat,  5 Mar 2011 18:27:53 -0600 (CST)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by pxi11 with SMTP id 11so667773pxi.35
	for <poky@yoctoproject.org>; Sat, 05 Mar 2011 16:27:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:date:message-id:subject:from:to
	:content-type; bh=GbIYAzeaO6+G7XY6rAqN+bkVmsZfTkRA4g0Hwt8dnkU=;
	b=s6GGYlS2cDcrE0P4eNAvL/518MraOX8qEeSlukQzGjV8X/8XLNyDDwLeJyqP9ZqljN
	XB6gbwY20a53tGaKs7DCaEIauyLOgKi2f5NF8DWnMgW1JsrAecqgyVa0fFJlTRMLbzdh
	voDmTb3M2xx4qpCcSKg1Dk9aGVy4ARQ9hzCNg=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:date:message-id:subject:from:to:content-type;
	b=oG2YPBbUwAZM5rGdArcRnNvrlbuFjFIszGqxxC6uCbt5inp6xWRgSdqCZTZaTFxgHK
	6/iJMJQVG9AtrUIqo2bves+hzW3hhQbpBycoIjM1yAZg46TmYvOaf51PPOKWV2CXoCGg
	x+1pX/Qw10wLz6geKE35JOdNrzC7kSH2SL22E=
MIME-Version: 1.0
Received: by 10.142.13.9 with SMTP id 9mr1882082wfm.86.1299371272616; Sat, 05
	Mar 2011 16:27:52 -0800 (PST)
Received: by 10.142.164.14 with HTTP; Sat, 5 Mar 2011 16:27:52 -0800 (PST)
Date: Sun, 6 Mar 2011 01:27:52 +0100
Message-ID: <AANLkTimNqxGR5bhx-1pRuz2cxdDxPkz4DQrkSVNGsE60@mail.gmail.com>
From: Marc <mbalcells@gmail.com>
To: poky@yoctoproject.org
Subject: error trying to use erlang openembedded recipe
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
X-List-Received-Date: Sun, 06 Mar 2011 00:27:53 -0000
Content-Type: multipart/alternative; boundary=000e0cd2425e22bcc4049dc573c0

--000e0cd2425e22bcc4049dc573c0
Content-Type: text/plain; charset=ISO-8859-1

Hello, I'm trying to use a recipe from openembedded to get the erlang
package. Everything was fine with poky 3.2 but now I'm trying to do the same
thing with poky-laverne-4.0 and I'm getting an error in the
do_populate_sysroot task.
I'm reading the recipes and trying to understand what could be wrong but I
can't find any reference to this do_populate_sysroot task. The error looks
quite simple, a broken path but I'm totally lost with this.
Has anyone succeeded in compiling erlang for poky?

Here is the error output:

Log data follows:
| ERROR: Error in executing python function in:
/opt/poky/meta-urbiotica/packages/erlang/erlang-native_R13B01.bb
| ERROR: Exception:<type 'exceptions.OSError'> Message:[Errno 2] No such
file or directory:
'/opt/poky/build/tmp/work/x86_64-linux/erlang-native-R13B01-r1/sysroot-destdir///opt/poky/build/tmp/sysroots'
| ERROR: Traceback:
| ERROR:   File "sstate_task_postfunc", line 8, in <module>
| ERROR:
| ERROR:   File "sstate_task_postfunc", line 3, in sstate_task_postfunc
| ERROR:
| ERROR:   File "sstate.bbclass", line 17, in sstate_install
| ERROR:
| ERROR:   File "/home/marc/igep/poky/meta/lib/oe/path.py", line 56, in
copytree
| ERROR:     names = os.listdir(src)
| ERROR:
| ERROR: The lines leading to this error were:
| ERROR:        0004:    for intercept in shared_state['interceptfuncs']:
| ERROR:        0005:        bb.build.exec_func(intercept, d)
| ERROR:        0006:    sstate_package(shared_state, d)
| ERROR:        0007:
| ERROR: Task failed: ('Function sstate_task_postfunc failed',
'/opt/poky/build/tmp/work/x86_64-linux/erlang-native-R13B01-r1/temp/log.do_populate_sysroot.11886')
NOTE: package erlang-native-R13B01-r1: task do_populate_sysroot: Failed


Any hint's on what could be wrong?

P.D. The recipe has a python function which might be related to this issue:


def get_erlang_libs_R13B01(d):
    import os, bb
    install_root = bb.data.getVar('D', d, 1)
    libdir = bb.data.getVar('libdir', d, 1)[1:]
    libs = ["${bindir}/dialyzer", "${libdir}/erlang/bin/dialyzer"]
    erlang_lib = os.path.join(install_root, libdir, "erlang/lib")
    for fname in os.listdir(erlang_lib):
        if not "-" in fname: continue
        if fname.startswith("compiler-"): continue
        if fname.startswith("kernel-"): continue
        if fname.startswith("sasl-"): continue
        if fname.startswith("stdlib-"): continue
        if fname.startswith("tools-"): continue
        libs.append(os.path.join("${libdir}", "erlang/lib", fname))
    libs.sort()
    return libs




-- 
Marc.

--000e0cd2425e22bcc4049dc573c0
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Hello, I&#39;m trying to use a recipe from openembedded to get the erlang p=
ackage. Everything was fine with poky 3.2 but now I&#39;m trying to do the =
same thing with poky-laverne-4.0 and I&#39;m getting an error in the do_pop=
ulate_sysroot task.<div>
I&#39;m reading the recipes and trying to understand what could be wrong bu=
t I can&#39;t find any reference to this do_populate_sysroot task. The erro=
r looks quite simple, a broken path but I&#39;m totally lost with this.</di=
v>
<div>Has anyone succeeded in compiling erlang for poky?</div><div><br></div=
><div>Here is the error output:</div><div><br clear=3D"all"><div>Log data f=
ollows:</div><div>| ERROR: Error in executing python function in: /opt/poky=
/meta-urbiotica/packages/erlang/erlang-native_R13B01.bb</div>
<div>| ERROR: Exception:&lt;type &#39;exceptions.OSError&#39;&gt; Message:[=
Errno 2] No such file or directory: &#39;/opt/poky/build/tmp/work/x86_64-li=
nux/erlang-native-R13B01-r1/sysroot-destdir///opt/poky/build/tmp/sysroots&#=
39;</div>
<div>| ERROR: Traceback:</div><div>| ERROR: =A0 File &quot;sstate_task_post=
func&quot;, line 8, in &lt;module&gt;</div><div>| ERROR:</div><div>| ERROR:=
 =A0 File &quot;sstate_task_postfunc&quot;, line 3, in sstate_task_postfunc=
</div>
<div>| ERROR:</div><div>| ERROR: =A0 File &quot;sstate.bbclass&quot;, line =
17, in sstate_install</div><div>| ERROR:</div><div>| ERROR: =A0 File &quot;=
/home/marc/igep/poky/meta/lib/oe/path.py&quot;, line 56, in copytree</div><=
div>
| ERROR: =A0 =A0 names =3D os.listdir(src)</div><div>| ERROR:</div><div>| E=
RROR: The lines leading to this error were:</div><div>| ERROR: =A0 =A0 =A0 =
=A00004: =A0 =A0for intercept in shared_state[&#39;interceptfuncs&#39;]:</d=
iv><div>| ERROR: =A0 =A0 =A0 =A00005: =A0 =A0 =A0 =A0bb.build.exec_func(int=
ercept, d)</div>
<div>| ERROR: =A0 =A0 =A0 =A00006: =A0 =A0sstate_package(shared_state, d)</=
div><div>| ERROR: =A0 =A0 =A0 =A00007:</div><div>| ERROR: Task failed: (&#3=
9;Function sstate_task_postfunc failed&#39;, &#39;/opt/poky/build/tmp/work/=
x86_64-linux/erlang-native-R13B01-r1/temp/log.do_populate_sysroot.11886&#39=
;)</div>
<div>NOTE: package erlang-native-R13B01-r1: task do_populate_sysroot: Faile=
d</div><div><br></div><div><br></div><div>Any hint&#39;s on what could be w=
rong?</div><div><br></div><div>P.D. The recipe has a python function which =
might be related to this issue:</div>
<div><br></div><div><br></div><div><div>def get_erlang_libs_R13B01(d):</div=
><div>=A0=A0 =A0import os, bb</div><div>=A0=A0 =A0install_root =3D bb.data.=
getVar(&#39;D&#39;, d, 1)</div><div>=A0=A0 =A0libdir =3D bb.data.getVar(&#3=
9;libdir&#39;, d, 1)[1:]</div>
<div>=A0=A0 =A0libs =3D [&quot;${bindir}/dialyzer&quot;, &quot;${libdir}/er=
lang/bin/dialyzer&quot;]</div><div>=A0=A0 =A0erlang_lib =3D os.path.join(in=
stall_root, libdir, &quot;erlang/lib&quot;)</div><div>=A0=A0 =A0for fname i=
n os.listdir(erlang_lib):</div>
<div>=A0=A0 =A0 =A0 =A0if not &quot;-&quot; in fname: continue</div><div>=
=A0=A0 =A0 =A0 =A0if fname.startswith(&quot;compiler-&quot;): continue</div=
><div>=A0=A0 =A0 =A0 =A0if fname.startswith(&quot;kernel-&quot;): continue<=
/div><div>=A0=A0 =A0 =A0 =A0if fname.startswith(&quot;sasl-&quot;): continu=
e</div>
<div>=A0=A0 =A0 =A0 =A0if fname.startswith(&quot;stdlib-&quot;): continue</=
div><div>=A0=A0 =A0 =A0 =A0if fname.startswith(&quot;tools-&quot;): continu=
e</div><div>=A0=A0 =A0 =A0 =A0libs.append(os.path.join(&quot;${libdir}&quot=
;, &quot;erlang/lib&quot;, fname))</div>
<div>=A0=A0 =A0libs.sort()</div><div>=A0=A0 =A0return libs</div></div><div>=
<br></div><div><br></div><div><br></div><div><br></div>-- <br>Marc.<br>
</div>

--000e0cd2425e22bcc4049dc573c0--
