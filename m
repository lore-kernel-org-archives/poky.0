Return-Path: <bobadeshrikant@gmail.com>
Received: from mail-la0-f65.google.com (mail-la0-f65.google.com
	[209.85.215.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6B8E3E01768
	for <poky@yoctoproject.org>; Thu, 24 Oct 2013 07:47:42 -0700 (PDT)
Received: by mail-la0-f65.google.com with SMTP id ea20so400031lab.0
	for <poky@yoctoproject.org>; Thu, 24 Oct 2013 07:47:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=6LHBKrd/4KtuSt/ycwS1RJUbOYPKjwQhCVTr2SwXrwI=;
	b=yoDCjSpkFH/MMqm7T0eeWcI3sf3Sojzn2OaYmB9GBZ/b354yDDaNqe/Due9SGdR+kq
	oZ7ARnVgBy0MDJKj91+gzKvNzlflNyRwZ0iyNBQx6i0qFmrWM2HamH5ENUNT2T2r3pSe
	Mj02w5dChG8iWg3QRzM1NEHOslwgEnIK7k+w8odTtt+YP9O3QGwgshyR8iIMWSL+Ctwk
	8rRyUgnUEykNO4LELscJ2toawJRa2vMmdOIbHYlh0PbZWsG8iOMOBoHpkyU+gEcxXmgb
	bEzRjc00Waozrsak6iPUq8XIxNZmYPgCh3x9V1l44zP4XqB39kr9bbpYJ7NriHmI2WKg
	tH5A==
MIME-Version: 1.0
X-Received: by 10.152.9.36 with SMTP id w4mr2095028laa.34.1382626060695; Thu,
	24 Oct 2013 07:47:40 -0700 (PDT)
Received: by 10.114.161.226 with HTTP; Thu, 24 Oct 2013 07:47:40 -0700 (PDT)
Date: Thu, 24 Oct 2013 20:17:40 +0530
Message-ID: <CALwQErqri9gpTyJoBcMK19EmhaMr0vBRsWHvORYjA=h1Go=73g@mail.gmail.com>
From: Shrikant Bobade <bobadeshrikant@gmail.com>
To: poky@yoctoproject.org
Subject: dbus-ptest 1.6.10: bus-test fails @ assertion failed.. in function process_ok of dbus-auth.c
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion & patch submission for
	meta-yocto <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 24 Oct 2013 14:47:43 -0000
Content-Type: multipart/alternative; boundary=089e0158b7e8347b3604e97db77d

--089e0158b7e8347b3604e97db77d
Content-Type: text/plain; charset=ISO-8859-1

Hi,

I am using dbus ver: 1.6.10 , prepared the dbus-ptest support(
http://git.yoctoproject.org/cgit/cgit.cgi/poky/tree/meta/recipes-core/dbus/dbus-ptest_1.6.10.bb).
while executing the test suite of dbus-ptest, getting bus-test failure @
assertion failed in function process_ok  of dbus-auth.c as soon as
org.freedesktop.DBus.TestSuiteEchoService got activated, while remaining
all other test cases from test suite executed successfully.

Does any one faced similar issue?


error log:
> *Successfully activated service
'org.freedesktop.DBus.TestSuiteEchoService'
> 352: assertion failed "_dbus_string_get_length (& DBUS_AUTH_CLIENT
> (auth)->guid_from_server) == 0" file
"/dbus-ptest/1.6.10-r0/dbus-1.6.10/dbus/dbus-auth.c" line
> 1545 function process_ok
*
Any pointers or references will be a great help.

Thanks in Adv.


Below is the detail log for bus-test execution:
==============================
===

*# /usr/lib/dbus-ptest/ptest/bus/bus-test
/usr/lib/dbus-ptest/ptest/test/data/
/usr/lib/dbus-ptest/ptest/bus/bus-test: Running expire list test
/usr/lib/dbus-ptest/ptest/bus/bus-test: checking for memleaks
/usr/lib/dbus-ptest/ptest/bus/bus-test: Running config file parser test
Testing retrieving the default session service directories
    default service dir: /home/root/.local/share/dbus-1/services
    default service dir: /usr/local/share/dbus-1/services
    default service dir: /usr/share/dbus-1/services
    default service dir: /usr/share/dbus-1/services
    test service dir: /testhome/foo/.testlocal/testshare/dbus-1/services
    test service dir: /testusr/testlocal/testshare/dbus-1/services
    test service dir: /testusr/testshare/dbus-1/services
    test service dir: /usr/share/dbus-1/services
Testing retrieving the default system service directories
    default service dir: /usr/local/share/dbus-1/system-services
    default service dir: /usr/share/dbus-1/system-services
    default service dir: /usr/share/dbus-1/system-services
    default service dir: /lib/dbus-1/system-services
    test service dir: /usr/local/share/dbus-1/system-services
    test service dir: /usr/share/dbus-1/system-services
    test service dir: /usr/share/dbus-1/system-services
    test service dir: /lib/dbus-1/system-services
Testing valid files:
    debug-allow-all.conf
    system.conf
    many-rules.conf
    session.conf
    incoming-limit.conf
    debug-allow-all-sha1.conf
    entities.conf
    basic.conf
Testing invalid files:
    circular-2.conf
    badselinux-2.conf
    truncated-file.conf
    badselinux-1.conf
    not-well-formed.conf
    circular-3.conf
    circular-1.conf
Comparing equivalent files:
    basic-2.conf
    basic-1.conf
Comparing equivalent files:
    entities-1.conf
    entities-2.conf
/usr/lib/dbus-ptest/ptest/bus/bus-test: checking for memleaks
/usr/lib/dbus-ptest/ptest/bus/bus-test: Running signals test
/usr/lib/dbus-ptest/ptest/bus/bus-test: checking for memleaks
/usr/lib/dbus-ptest/ptest/bus/bus-test: Running SHA1 connection test
/usr/lib/dbus-ptest/ptest/bus/bus-test: checking for memleaks
/usr/lib/dbus-ptest/ptest/bus/bus-test: Running message dispatch test
Activating service name='org.freedesktop.DBus.TestSuiteEchoService'
Successfully activated service 'org.freedesktop.DBus.TestSuiteEchoService'
352: assertion failed "_dbus_string_get_length (& DBUS_AUTH_CLIENT
(auth)->guid_from_server) == 0" file "/dbus-1.6.10/dbus/dbus-auth.c" line
1545 function process_ok
  /usr/lib/dbus-ptest/ptest/bus/bus-test(_dbus_print_backtrace+0x1c)
[0x8394c]
  /usr/lib/dbus-ptest/ptest/bus/bus-test(_dbus_abort+0x8) [0x87560]
  /usr/lib/dbus-ptest/ptest/bus/bus-test(_dbus_real_assert+0x48) [0x6e938]
  /usr/lib/dbus-ptest/ptest/bus/bus-test() [0x98a78]
  /usr/lib/dbus-ptest/ptest/bus/bus-test(_dbus_auth_do_work+0x360) [0x99c3c]
  /usr/lib/dbus-ptest/ptest/bus/bus-test() [0x683f8]
  /usr/lib/dbus-ptest/ptest/bus/bus-test() [0x6987c]
  /usr/lib/dbus-ptest/ptest/bus/bus-test(_dbus_transport_handle_watch+0xa8)
[0x67438]

/usr/lib/dbus-ptest/ptest/bus/bus-test(_dbus_connection_handle_watch+0xdc)
[0x43bdc]
  /usr/lib/dbus-ptest/ptest/bus/bus-test(dbus_watch_handle+0xd0) [0x6ae44]
  /usr/lib/dbus-ptest/ptest/bus/bus-test(_dbus_loop_iterate+0x1bc) [0x88c28]
  /usr/lib/dbus-ptest/ptest/bus/bus-test(bus_test_run_clients_loop+0x54)
[0x3be7c]
  /usr/lib/dbus-ptest/ptest/bus/bus-test() [0x2a854]
  /usr/lib/dbus-ptest/ptest/bus/bus-test() [0x2bcd8]
  /usr/lib/dbus-ptest/ptest/bus/bus-test() [0x2b71c]
  /usr/lib/dbus-ptest/ptest/bus/bus-test(_dbus_test_oom_handling+0x158)
[0x6f290]
  /usr/lib/dbus-ptest/ptest/bus/bus-test() [0x2d180]
  /usr/lib/dbus-ptest/ptest/bus/bus-test(bus_dispatch_test+0x3c) [0x2f0f8]
  /usr/lib/dbus-ptest/ptest/bus/bus-test(main+0x1ac) [0x1a87c]
  /lib/libc.so.6(__libc_start_main+0x114) [0x4bfc142c]
Aborted*


Thanks
Shrikant

--089e0158b7e8347b3604e97db77d
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div>Hi, <br><br></div>I am using dbus ver: 1.6.10 , =
prepared the=20
dbus-ptest support(<a href=3D"http://git.yoctoproject.org/cgit/cgit.cgi/pok=
y/tree/meta/recipes-core/dbus/dbus-ptest_1.6.10.bb">http://git.yoctoproject=
.org/cgit/cgit.cgi/poky/tree/meta/recipes-core/dbus/dbus-ptest_1.6.10.bb</a=
>).=A0 while executing the test suite of dbus-ptest,=20
getting bus-test failure @ assertion failed in function process_ok=A0 of=20
dbus-auth.c as soon as org.freedesktop.DBus.TestSuiteEchoService got activa=
ted, while remaining all other test cases from test suite=20
executed successfully. <br>
<br></div><div>Does any one faced similar issue? <br></div><div><br><br>err=
or log:<br><font size=3D"1">&gt; <i>Successfully activated service &#39;org=
.freedesktop.DBus.TestSuiteEchoService&#39;<br>&gt; 352:
 assertion failed &quot;_dbus_string_get_length (&amp; DBUS_AUTH_CLIENT=20
<br>&gt; (auth)-&gt;guid_from_server) =3D=3D 0&quot; file=20
&quot;/dbus-ptest/1.6.10-r0/dbus-1.6.10/dbus/dbus-auth.c&quot; line<br>&gt;=
 1545 function=20
process_ok<br></i></font><br></div><div>Any pointers or references will be =
a great help. <br><br></div><div>Thanks in Adv. <br></div><div><br></div><d=
iv><br></div>Below is the detail log for bus-test execution:<br>
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D<div dir=3D"ltr">=3D=3D=3D<br><div><div><br><font size=3D"1"=
><i># /usr/lib/dbus-ptest/ptest/bus/bus-test /usr/lib/dbus-ptest/ptest/test=
/data/=A0=A0 <br>/usr/lib/dbus-ptest/ptest/bus/bus-test: Running expire lis=
t test<br>

/usr/lib/dbus-ptest/ptest/bus/bus-test: checking for memleaks<br>/usr/lib/d=
bus-ptest/ptest/bus/bus-test: Running config file parser test<br>Testing re=
trieving the default session service directories<br>=A0=A0=A0 default servi=
ce dir: /home/root/.local/share/dbus-1/services<br>

=A0=A0=A0 default service dir: /usr/local/share/dbus-1/services<br>=A0=A0=
=A0 default service dir: /usr/share/dbus-1/services<br>=A0=A0=A0 default se=
rvice dir: /usr/share/dbus-1/services<br>=A0=A0=A0 test service dir: /testh=
ome/foo/.testlocal/testshare/dbus-1/services<br>

=A0=A0=A0 test service dir: /testusr/testlocal/testshare/dbus-1/services<br=
>=A0=A0=A0 test service dir: /testusr/testshare/dbus-1/services<br>=A0=A0=
=A0 test service dir: /usr/share/dbus-1/services<br>Testing retrieving the =
default system service directories<br>

=A0=A0=A0 default service dir: /usr/local/share/dbus-1/system-services<br>=
=A0=A0=A0 default service dir: /usr/share/dbus-1/system-services<br>=A0=A0=
=A0 default service dir: /usr/share/dbus-1/system-services<br>=A0=A0=A0 def=
ault service dir: /lib/dbus-1/system-services<br>

=A0=A0=A0 test service dir: /usr/local/share/dbus-1/system-services<br>=A0=
=A0=A0 test service dir: /usr/share/dbus-1/system-services<br>=A0=A0=A0 tes=
t service dir: /usr/share/dbus-1/system-services<br>=A0=A0=A0 test service =
dir: /lib/dbus-1/system-services<br>

Testing valid files:<br>=A0=A0=A0 debug-allow-all.conf<br>=A0=A0=A0 system.=
conf<br>=A0=A0=A0 many-rules.conf<br>=A0=A0=A0 session.conf<br>=A0=A0=A0 in=
coming-limit.conf<br>=A0=A0=A0 debug-allow-all-sha1.conf<br>=A0=A0=A0 entit=
ies.conf<br>=A0=A0=A0 basic.conf<br>Testing invalid files:<br>

=A0=A0=A0 circular-2.conf<br>=A0=A0=A0 badselinux-2.conf<br>=A0=A0=A0 trunc=
ated-file.conf<br>=A0=A0=A0 badselinux-1.conf<br>=A0=A0=A0 not-well-formed.=
conf<br>=A0=A0=A0 circular-3.conf<br>=A0=A0=A0 circular-1.conf<br>Comparing=
 equivalent files:<br>=A0=A0=A0 basic-2.conf<br>

=A0=A0=A0 basic-1.conf<br>Comparing equivalent files:<br>=A0=A0=A0 entities=
-1.conf<br>=A0=A0=A0 entities-2.conf<br>/usr/lib/dbus-ptest/ptest/bus/bus-t=
est: checking for memleaks<br>/usr/lib/dbus-ptest/ptest/bus/bus-test: Runni=
ng signals test<br>

/usr/lib/dbus-ptest/ptest/bus/bus-test: checking for memleaks<br>/usr/lib/d=
bus-ptest/ptest/bus/bus-test: Running SHA1 connection test<br>/usr/lib/dbus=
-ptest/ptest/bus/bus-test: checking for memleaks<br>/usr/lib/dbus-ptest/pte=
st/bus/bus-test: Running message dispatch test<br>

Activating service name=3D&#39;org.freedesktop.DBus.TestSuiteEchoService&#3=
9;<br>Successfully activated service &#39;org.freedesktop.DBus.TestSuiteEch=
oService&#39;<br>352:
 assertion failed &quot;_dbus_string_get_length (&amp; DBUS_AUTH_CLIENT=20
(auth)-&gt;guid_from_server) =3D=3D 0&quot; file &quot;/dbus-1.6.10/dbus/db=
us-auth.c&quot; line 1545 function process_ok<br>
=A0 /usr/lib/dbus-ptest/ptest/bus/bus-test(_dbus_print_backtrace+0x1c) [0x8=
394c]<br>=A0 /usr/lib/dbus-ptest/ptest/bus/bus-test(_dbus_abort+0x8) [0x875=
60]<br>=A0 /usr/lib/dbus-ptest/ptest/bus/bus-test(_dbus_real_assert+0x48) [=
0x6e938]<br>

=A0 /usr/lib/dbus-ptest/ptest/bus/bus-test() [0x98a78]<br>=A0 /usr/lib/dbus=
-ptest/ptest/bus/bus-test(_dbus_auth_do_work+0x360) [0x99c3c]<br>=A0 /usr/l=
ib/dbus-ptest/ptest/bus/bus-test() [0x683f8]<br>=A0 /usr/lib/dbus-ptest/pte=
st/bus/bus-test() [0x6987c]<br>

=A0 /usr/lib/dbus-ptest/ptest/bus/bus-test(_dbus_transport_handle_watch+0xa=
8) [0x67438]<br>=A0 /usr/lib/dbus-ptest/ptest/bus/bus-test(_dbus_connection=
_handle_watch+0xdc) [0x43bdc]<br>=A0 /usr/lib/dbus-ptest/ptest/bus/bus-test=
(dbus_watch_handle+0xd0) [0x6ae44]<br>

=A0 /usr/lib/dbus-ptest/ptest/bus/bus-test(_dbus_loop_iterate+0x1bc) [0x88c=
28]<br>=A0 /usr/lib/dbus-ptest/ptest/bus/bus-test(bus_test_run_clients_loop=
+0x54) [0x3be7c]<br>=A0 /usr/lib/dbus-ptest/ptest/bus/bus-test() [0x2a854]<=
br>

=A0 /usr/lib/dbus-ptest/ptest/bus/bus-test() [0x2bcd8]<br>=A0 /usr/lib/dbus=
-ptest/ptest/bus/bus-test() [0x2b71c]<br>=A0 /usr/lib/dbus-ptest/ptest/bus/=
bus-test(_dbus_test_oom_handling+0x158) [0x6f290]<br>=A0 /usr/lib/dbus-ptes=
t/ptest/bus/bus-test() [0x2d180]<br>

=A0 /usr/lib/dbus-ptest/ptest/bus/bus-test(bus_dispatch_test+0x3c) [0x2f0f8=
]<br>=A0 /usr/lib/dbus-ptest/ptest/bus/bus-test(main+0x1ac) [0x1a87c]<br>=
=A0 /lib/libc.so.6(__libc_start_main+0x114) [0x4bfc142c]<br>Aborted</i></fo=
nt><br>

<br><br></div><div>Thanks<br></div><div>Shrikant<br></div><div><div class=
=3D""><div id=3D":u6" class=3D"" tabindex=3D"0"><img class=3D"" src=3D"http=
s://mail.google.com/mail/u/0/images/cleardot.gif"></div></div></div></div><=
/div></div>

--089e0158b7e8347b3604e97db77d--
