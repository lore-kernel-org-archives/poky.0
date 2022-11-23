Subject: stdout overwriting logger output for service units
To: poky@lists.yoctoproject.org
From: jcmalek@lakeheadu.ca
X-Originating-Location: Montreal, Quebec, CA (129.222.205.229)
X-Originating-Platform: Windows Chrome 107
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 23 Nov 2022 09:08:40 -0800
Message-ID: <oy3w.1669223320962012665.WVBs@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="xfvrhplBZRYcNIwtP35T"

--xfvrhplBZRYcNIwtP35T
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi there Poky team,

I have recently noticed that some of the stdout output has been overwriting=
 the logger output when I do a "journalctl -u service_name" on any of the s=
ervices. The systemd team has referred me to this project (my downstream di=
stro) to look into the issue before they are willing to have a look. They w=
ould ideally like this tested on a newer version of systemd. The steps to r=
eproduce the problem are fairly simple. I have hopefully included all the r=
elevant details below. Please let me know if there is anything else you nee=
d.

systemd version the issue has been seen with
--------------------------------------------

246

Used distribution
-----------------

Poky (Yocto Project Reference Distro) 3.2.4 \n \l

Linux kernel version used
-------------------------

5.12.10

CPU architectures issue was seen on
-----------------------------------

arm

Component
---------

journalctl

Expected behaviour you didn't see
---------------------------------

Expected both logger and standard output to appear in service unit logs:

journalctl -f -u test
Nov 16 15:05:08 c-00012 sh[1617]: Standard output: 1
Nov 16 15:05:08 c-00012 root[1650]: Logger: 1
Nov 16 15:05:08 c-00012 sh[1617]: Standard output: 2
Nov 16 15:05:08 c-00012 root[1652]: Logger: 2
Nov 16 15:05:09 c-00012 sh[1617]: Standard output: 3
Nov 16 15:05:09 c-00012 root[1654]: Logger: 3
Nov 16 15:05:10 c-00012 sh[1617]: Standard output: 4
Nov 16 15:05:10 c-00012 root[1656]: Logger: 4
Nov 16 15:05:11 c-00012 sh[1617]: Standard output: 5
Nov 16 15:05:11 c-00012 root[1658]: Logger: 5

Unexpected behaviour you saw
----------------------------

I only get the standard output messages and every once and a while one of t=
he logger messages sneaks through:

journalctl -f -u test
Nov 16 15:05:08 c-00012 sh[1617]: Standard output: 1
Nov 16 15:05:08 c-00012 sh[1617]: Standard output: 2
Nov 16 15:05:09 c-00012 sh[1617]: Standard output: 3
Nov 16 15:06:09 c-00012 root[1654]: Logger: 3
Nov 16 15:05:10 c-00012 sh[1617]: Standard output: 4
Nov 16 15:05:11 c-00012 sh[1617]: Standard output: 5

Steps to reproduce the problem
------------------------------

test.service contents:

[Unit]
Description=3DTest
DefaultDependencies=3Dno

[Service]
Type=3Doneshot
ExecStart=3D/bin/sh /mytest.sh
RemainAfterExit=3Dyes

/mytest.sh contents:

#!/bin/sh
i=3D0
while [ $i -le 100 ]; do
 echo "Standard output: ${i}"
 logger "Logger: ${i}"
 sleep 1
 i=3D$((i+1))
done

* journalctl -f -u test
* systemctl start test

--xfvrhplBZRYcNIwtP35T
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<h6 dir=3D"auto" style=3D"margin-bottom: 16px; font-size: 1.25em; font-weig=
ht: var(--base-text-weight-semibold, 600); line-height: 1.25; color: #24292=
f; font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', 'Noto Sans',=
 Helvetica, Arial, sans-serif, 'Apple Color Emoji', 'Segoe UI Emoji'; margi=
n-top: 0px !important;"><span style=3D"font-size: 14px; font-weight: 400;">=
Hi there Poky team,</span></h6>
<p>I have recently noticed that some of the stdout output has been overwrit=
ing the logger output when I do a "journalctl -u service_name" on any of th=
e services. The systemd team has referred me to this project (my downstream=
 distro) to look into the issue before they are willing to have a look. The=
y would ideally like this tested on a newer version of systemd. The steps t=
o reproduce the problem are fairly simple. I have hopefully included all th=
e relevant details below. Please let me know if there is anything else you =
need.</p>
<h3 dir=3D"auto" style=3D"margin-bottom: 16px; font-size: 1.25em; font-weig=
ht: var(--base-text-weight-semibold, 600); line-height: 1.25; color: #24292=
f; font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', 'Noto Sans',=
 Helvetica, Arial, sans-serif, 'Apple Color Emoji', 'Segoe UI Emoji'; margi=
n-top: 0px !important;">&nbsp;</h3>
<h3 dir=3D"auto" style=3D"margin-bottom: 16px; font-size: 1.25em; font-weig=
ht: var(--base-text-weight-semibold, 600); line-height: 1.25; color: #24292=
f; font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', 'Noto Sans',=
 Helvetica, Arial, sans-serif, 'Apple Color Emoji', 'Segoe UI Emoji'; margi=
n-top: 0px !important;">systemd version the issue has been seen with</h3>
<p dir=3D"auto" style=3D"margin-bottom: 16px; color: #24292f; font-family: =
-apple-system, BlinkMacSystemFont, 'Segoe UI', 'Noto Sans', Helvetica, Aria=
l, sans-serif, 'Apple Color Emoji', 'Segoe UI Emoji';">246</p>
<h3 dir=3D"auto" style=3D"margin-top: 24px; margin-bottom: 16px; font-size:=
 1.25em; font-weight: var(--base-text-weight-semibold, 600); line-height: 1=
.25; color: #24292f; font-family: -apple-system, BlinkMacSystemFont, 'Segoe=
 UI', 'Noto Sans', Helvetica, Arial, sans-serif, 'Apple Color Emoji', 'Sego=
e UI Emoji';">Used distribution</h3>
<p dir=3D"auto" style=3D"margin-bottom: 16px; color: #24292f; font-family: =
-apple-system, BlinkMacSystemFont, 'Segoe UI', 'Noto Sans', Helvetica, Aria=
l, sans-serif, 'Apple Color Emoji', 'Segoe UI Emoji';">Poky (Yocto Project =
Reference Distro) 3.2.4 \n \l</p>
<h3 dir=3D"auto" style=3D"margin-top: 24px; margin-bottom: 16px; font-size:=
 1.25em; font-weight: var(--base-text-weight-semibold, 600); line-height: 1=
.25; color: #24292f; font-family: -apple-system, BlinkMacSystemFont, 'Segoe=
 UI', 'Noto Sans', Helvetica, Arial, sans-serif, 'Apple Color Emoji', 'Sego=
e UI Emoji';">Linux kernel version used</h3>
<p dir=3D"auto" style=3D"margin-bottom: 16px; color: #24292f; font-family: =
-apple-system, BlinkMacSystemFont, 'Segoe UI', 'Noto Sans', Helvetica, Aria=
l, sans-serif, 'Apple Color Emoji', 'Segoe UI Emoji';">5.12.10</p>
<h3 dir=3D"auto" style=3D"margin-top: 24px; margin-bottom: 16px; font-size:=
 1.25em; font-weight: var(--base-text-weight-semibold, 600); line-height: 1=
.25; color: #24292f; font-family: -apple-system, BlinkMacSystemFont, 'Segoe=
 UI', 'Noto Sans', Helvetica, Arial, sans-serif, 'Apple Color Emoji', 'Sego=
e UI Emoji';">CPU architectures issue was seen on</h3>
<p dir=3D"auto" style=3D"margin-bottom: 16px; color: #24292f; font-family: =
-apple-system, BlinkMacSystemFont, 'Segoe UI', 'Noto Sans', Helvetica, Aria=
l, sans-serif, 'Apple Color Emoji', 'Segoe UI Emoji';">arm</p>
<h3 dir=3D"auto" style=3D"margin-top: 24px; margin-bottom: 16px; font-size:=
 1.25em; font-weight: var(--base-text-weight-semibold, 600); line-height: 1=
.25; color: #24292f; font-family: -apple-system, BlinkMacSystemFont, 'Segoe=
 UI', 'Noto Sans', Helvetica, Arial, sans-serif, 'Apple Color Emoji', 'Sego=
e UI Emoji';">Component</h3>
<p dir=3D"auto" style=3D"margin-bottom: 16px; color: #24292f; font-family: =
-apple-system, BlinkMacSystemFont, 'Segoe UI', 'Noto Sans', Helvetica, Aria=
l, sans-serif, 'Apple Color Emoji', 'Segoe UI Emoji';">journalctl</p>
<h3 dir=3D"auto" style=3D"margin-top: 24px; margin-bottom: 16px; font-size:=
 1.25em; font-weight: var(--base-text-weight-semibold, 600); line-height: 1=
.25; color: #24292f; font-family: -apple-system, BlinkMacSystemFont, 'Segoe=
 UI', 'Noto Sans', Helvetica, Arial, sans-serif, 'Apple Color Emoji', 'Sego=
e UI Emoji';">Expected behaviour you didn't see</h3>
<p dir=3D"auto" style=3D"margin-bottom: 16px; color: #24292f; font-family: =
-apple-system, BlinkMacSystemFont, 'Segoe UI', 'Noto Sans', Helvetica, Aria=
l, sans-serif, 'Apple Color Emoji', 'Segoe UI Emoji';">Expected both logger=
 and standard output to appear in service unit logs:</p>
<p dir=3D"auto" style=3D"margin-bottom: 16px; color: #24292f; font-family: =
-apple-system, BlinkMacSystemFont, 'Segoe UI', 'Noto Sans', Helvetica, Aria=
l, sans-serif, 'Apple Color Emoji', 'Segoe UI Emoji';">journalctl -f -u tes=
t<br />Nov 16 15:05:08 c-00012 sh[1617]: Standard output: 1<br />Nov 16 15:=
05:08 c-00012 root[1650]: Logger: 1<br />Nov 16 15:05:08 c-00012 sh[1617]: =
Standard output: 2<br />Nov 16 15:05:08 c-00012 root[1652]: Logger: 2<br />=
Nov 16 15:05:09 c-00012 sh[1617]: Standard output: 3<br />Nov 16 15:05:09 c=
-00012 root[1654]: Logger: 3<br />Nov 16 15:05:10 c-00012 sh[1617]: Standar=
d output: 4<br />Nov 16 15:05:10 c-00012 root[1656]: Logger: 4<br />Nov 16 =
15:05:11 c-00012 sh[1617]: Standard output: 5<br />Nov 16 15:05:11 c-00012 =
root[1658]: Logger: 5</p>
<h3 dir=3D"auto" style=3D"margin-top: 24px; margin-bottom: 16px; font-size:=
 1.25em; font-weight: var(--base-text-weight-semibold, 600); line-height: 1=
.25; color: #24292f; font-family: -apple-system, BlinkMacSystemFont, 'Segoe=
 UI', 'Noto Sans', Helvetica, Arial, sans-serif, 'Apple Color Emoji', 'Sego=
e UI Emoji';">Unexpected behaviour you saw</h3>
<p dir=3D"auto" style=3D"margin-bottom: 16px; color: #24292f; font-family: =
-apple-system, BlinkMacSystemFont, 'Segoe UI', 'Noto Sans', Helvetica, Aria=
l, sans-serif, 'Apple Color Emoji', 'Segoe UI Emoji';">I only get the stand=
ard output messages and every once and a while one of the logger messages s=
neaks through:</p>
<p dir=3D"auto" style=3D"margin-bottom: 16px; color: #24292f; font-family: =
-apple-system, BlinkMacSystemFont, 'Segoe UI', 'Noto Sans', Helvetica, Aria=
l, sans-serif, 'Apple Color Emoji', 'Segoe UI Emoji';">journalctl -f -u tes=
t<br />Nov 16 15:05:08 c-00012 sh[1617]: Standard output: 1<br />Nov 16 15:=
05:08 c-00012 sh[1617]: Standard output: 2<br />Nov 16 15:05:09 c-00012 sh[=
1617]: Standard output: 3<br />Nov 16 15:06:09 c-00012 root[1654]: Logger: =
3<br />Nov 16 15:05:10 c-00012 sh[1617]: Standard output: 4<br />Nov 16 15:=
05:11 c-00012 sh[1617]: Standard output: 5</p>
<h3 dir=3D"auto" style=3D"margin-top: 24px; margin-bottom: 16px; font-size:=
 1.25em; font-weight: var(--base-text-weight-semibold, 600); line-height: 1=
.25; color: #24292f; font-family: -apple-system, BlinkMacSystemFont, 'Segoe=
 UI', 'Noto Sans', Helvetica, Arial, sans-serif, 'Apple Color Emoji', 'Sego=
e UI Emoji';">Steps to reproduce the problem</h3>
<p dir=3D"auto" style=3D"margin-bottom: 16px; color: #24292f; font-family: =
-apple-system, BlinkMacSystemFont, 'Segoe UI', 'Noto Sans', Helvetica, Aria=
l, sans-serif, 'Apple Color Emoji', 'Segoe UI Emoji';">test.service content=
s:</p>
<div class=3D"snippet-clipboard-content notranslate position-relative overf=
low-auto" style=3D"color: #24292f; font-family: -apple-system, BlinkMacSyst=
emFont, 'Segoe UI', 'Noto Sans', Helvetica, Arial, sans-serif, 'Apple Color=
 Emoji', 'Segoe UI Emoji'; position: relative !important; overflow: auto !i=
mportant;">
<pre class=3D"notranslate" style=3D"font-family: ui-monospace, SFMono-Regul=
ar, 'SF Mono', Menlo, Consolas, 'Liberation Mono', monospace; font-size: 11=
.9px; margin-bottom: 16px; overflow-wrap: normal; padding: 16px; line-heigh=
t: 1.45; background-color: var(--color-canvas-subtle); border-radius: 6px;"=
><code style=3D"font-family: ui-monospace, SFMono-Regular, 'SF Mono', Menlo=
, Consolas, 'Liberation Mono', monospace; font-size: 11.9px; margin: 0px; b=
ackground-image: initial; background-position: initial; background-size: in=
itial; background-repeat: initial; background-attachment: initial; backgrou=
nd-origin: initial; background-clip: initial; border-radius: 6px; word-brea=
k: normal; white-space: pre; border: 0px; display: inline; overflow: visibl=
e; line-height: inherit; overflow-wrap: normal;">[Unit]
Description=3DTest
DefaultDependencies=3Dno


[Service]
Type=3Doneshot
ExecStart=3D/bin/sh /mytest.sh
RemainAfterExit=3Dyes
</code></pre>
</div>
<p dir=3D"auto" style=3D"margin-bottom: 16px; color: #24292f; font-family: =
-apple-system, BlinkMacSystemFont, 'Segoe UI', 'Noto Sans', Helvetica, Aria=
l, sans-serif, 'Apple Color Emoji', 'Segoe UI Emoji';">/mytest.sh contents:=
</p>
<div class=3D"snippet-clipboard-content notranslate position-relative overf=
low-auto" style=3D"color: #24292f; font-family: -apple-system, BlinkMacSyst=
emFont, 'Segoe UI', 'Noto Sans', Helvetica, Arial, sans-serif, 'Apple Color=
 Emoji', 'Segoe UI Emoji'; position: relative !important; overflow: auto !i=
mportant;">
<pre class=3D"notranslate" style=3D"font-family: ui-monospace, SFMono-Regul=
ar, 'SF Mono', Menlo, Consolas, 'Liberation Mono', monospace; font-size: 11=
.9px; margin-bottom: 16px; overflow-wrap: normal; padding: 16px; line-heigh=
t: 1.45; background-color: var(--color-canvas-subtle); border-radius: 6px;"=
><code style=3D"font-family: ui-monospace, SFMono-Regular, 'SF Mono', Menlo=
, Consolas, 'Liberation Mono', monospace; font-size: 11.9px; margin: 0px; b=
ackground-image: initial; background-position: initial; background-size: in=
itial; background-repeat: initial; background-attachment: initial; backgrou=
nd-origin: initial; background-clip: initial; border-radius: 6px; word-brea=
k: normal; white-space: pre; border: 0px; display: inline; overflow: visibl=
e; line-height: inherit; overflow-wrap: normal;">#!/bin/sh
i=3D0
while [ $i -le 100 ]; do
  echo "Standard output: ${i}"
  logger "Logger: ${i}"
  sleep 1
  i=3D$((i+1))
done
</code></pre>
</div>
<ol dir=3D"auto" style=3D"padding-left: 2em; margin-bottom: 16px; color: #2=
4292f; font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', 'Noto Sa=
ns', Helvetica, Arial, sans-serif, 'Apple Color Emoji', 'Segoe UI Emoji';">
<li style=3D"margin-left: 0px;">journalctl -f -u test</li>
<li style=3D"margin-top: 0.25em; margin-left: 0px;">systemctl start test</l=
i>
</ol>

--xfvrhplBZRYcNIwtP35T--
