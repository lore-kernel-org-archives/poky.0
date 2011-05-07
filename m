Return-Path: <Kai.Kang@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 0B4B44C800B3
	for <poky@yoctoproject.org>; Sat,  7 May 2011 01:58:49 -0500 (CDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p476wnCq018945
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <poky@yoctoproject.org>; Fri, 6 May 2011 23:58:49 -0700 (PDT)
Received: from [128.224.163.157] (128.224.163.157) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.1.255.0;
	Fri, 6 May 2011 23:58:48 -0700
Message-ID: <4DC4ED97.50802@windriver.com>
Date: Sat, 7 May 2011 14:58:31 +0800
From: Kang Kai <Kai.Kang@windriver.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.13) Gecko/20101208 Thunderbird/3.1.7
MIME-Version: 1.0
To: Mark Hatle <mark.hatle@windriver.com>
References: <BANLkTim-yTAu5cDewMwawEM_FeL_xkNiVA@mail.gmail.com>	<4DC3C7B4.1000705@windriver.com>
	<4DC41135.4070708@windriver.com>
In-Reply-To: <4DC41135.4070708@windriver.com>
X-Originating-IP: [128.224.163.157]
Cc: poky@yoctoproject.org
Subject: Re: Error in pulling cups package
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
X-List-Received-Date: Sat, 07 May 2011 06:58:50 -0000
X-Groupsio-MsgNum: 5824
Content-Type: multipart/mixed; boundary="------------080504060105020309010409"

--------------080504060105020309010409
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit

On 2011年05月06日 23:18, Mark Hatle wrote:
> On 5/6/11 5:04 AM, Kang Kai wrote:
>> On 2011年05月05日 19:25, chinmaya hoshing wrote:
>>> Hi,
>>>
>>> I am trying to port Poky to the "sandybridge platform"  for "sugarbay" machine.
>>> I am getting error for cups package following is the error log:
>>>
>>> Processing google-chrome...
>>> | Processing bzip2...
>>> | Processing cups...
>>> | error: LOOP:
>>> | error: removing busybox-1.17.3-r2.snb "Requires(hint): busybox-udhcpc" from
>>> tsort relations.
>>> | error: removing busybox-udhcpc-1.17.3-r2.snb "Requires(post): /bin/sh" from
>>> tsort relations.
>>> | error: LOOP:
>>> | error: removing nss-dev-3.12.9-r2.snb "Requires: nss = 3.12.9-r2" from tsort
>>> relations.
>>> | error: removing nss-3.12.9-r2.snb "Requires: nss-dev>= 3.12.9" from tsort
>>> relations.
>>> | error: LOOP:
>>> | error: removing nspr-4.8.7-r0.snb "Requires: nspr-dev>= 4.8.7" from tsort
>>> relations.
>>> | error: removing nspr-dev-4.8.7-r0.snb "Requires: nspr = 4.8.7-r0" from tsort
>>> relations.
>>> | error: LOOP:
>>> | error: removing busybox-1.17.3-r2.snb "Requires(hint): busybox-syslog" from
>>> tsort relations.
>>> | error: removing busybox-syslog-1.17.3-r2.snb "Requires(post): /bin/sh" from
>>> tsort relations.
>>> | error: LOOP:
>>> | error: removing libudev0-164-r1.snb "Requires: udev = 164-r1" from tsort
>>> relations.
>>> | error: removing udev-164-r1.snb "Requires: libudev0>= 164" from tsort
>>> relations.
>>> | error: LOOP:
>>> | error: removing libdbus-1-3-1.4.1-r1.snb "Requires(hint): dbus-1" from tsort
>>> relations.
>>> | error: removing dbus-1-1.4.1-r1.snb "Requires: libdbus-1-3>= 1.4.1" from
>>> tsort relations.
>>> | Manifest:
>>> /home/sct/logi_sandybridge/poky/build/tmp/work/sugarbay-poky-linux/poky-image-minimal-black-1.0-r0/rootfs/install/install.manifest
>>> | error: LOOP:
>>> | error: removing nspr-4.8.7-r0.snb "Requires: nspr-dev>= 4.8.7" from tsort
>>> relations.
>>> | error: removing nspr-dev-4.8.7-r0.snb "Requires: nspr = 4.8.7-r0" from tsort
>>> relations.
>>> | error: LOOP:
>>> | error: removing busybox-1.17.3-r2.snb "Requires(hint): busybox-udhcpc" from
>>> tsort relations.
>>> | error: removing busybox-udhcpc-1.17.3-r2.snb "Requires(post): /bin/sh" from
>>> tsort relations.
>>> | error: LOOP:
>>> | error: removing nss-dev-3.12.9-r2.snb "Requires: nss = 3.12.9-r2" from tsort
>>> relations.
>>> | error: removing nss-3.12.9-r2.snb "Requires: nss-dev>= 3.12.9" from tsort
>>> relations.
>>> | error: LOOP:
>>> | error: removing busybox-syslog-1.17.3-r2.snb "Requires(post): /bin/sh" from
>>> tsort relations.
>>> | error: removing busybox-1.17.3-r2.snb "Requires(hint): busybox-syslog" from
>>> tsort relations.
>>> | error: LOOP:
>>> | error: removing dbus-1-1.4.1-r1.snb "Requires: libdbus-1-3>= 1.4.1" from
>>> tsort relations.
>>> | error: removing libdbus-1-3-1.4.1-r1.snb "Requires(hint): dbus-1" from tsort
>>> relations.
>>> | error: LOOP:
>>> | error: removing udev-164-r1.snb "Requires: libudev0>= 164" from tsort
>>> relations.
>>> | error: removing libudev0-164-r1.snb "Requires: udev = 164-r1" from tsort
>>> relations.
>>> | Preparing...
>>>   /home/sandybridge/poky/build/tmp/work/sugarbay-poky-linux/poky-image-minimal-black-1.0-r0/temp/run.do_rootfs.21768:
>>> line 507: 22206 Segmentation fault      rpm --dbpath /var/lib/rpm
>>> --define='_openall_before_chroot 1' --root ${target_rootfs} --predefine
>>> "_rpmds_sysinfo_path ${target_rootfs}/etc/rpm/sysinfo" --predefine
>>> "_rpmrc_platform_path ${target_rootfs}/etc/rpm/platform" -D "_dbpath
>>> /var/lib/rpm" --noscripts --notriggers --noparentdirs --nolinktos -D
>>> "__dbi_txn create nofsync private" -Uhv
>>> ${target_rootfs}/install/install_solution.manifest
> The loops have nothing to do with the segfault.
>
>> I tried to break the loop dependencies, then the "error: LOOP" message disappear.
>> But rpm still Segmentation fault, it is so hard to debug, can anyone give some
>> advices?
> If you can get me a reproducer I'll work on trying to identify the segfault and
> work through it.  (What I likely need is a copy of your deploy directory, and
> the items from the tmp/work/<machine>/<image>)
>
> Two ways to attempt to figure out what is going on:
>
> 1) Manually reproduce it
> Note, you should be able to reproduce this outside of the build system.  The
> basic steps are:
>
> run pseudo, and setup the environment for the rootfs image creation.
> run the failed script above in gdb
> wait until it segfaults and report on the segfault location...
Hi Mark,

I reproduce in the first way, and get backtrace in attachment, and hope 
this will help.

Regards,
Kai


>
> 2) Capture a core...
>
> On the command line run: ulimit -c unlimited
>
> Run the bitbake command that fails
>
> Look for the dumped core file, likely in tmp/work/<machine>/<image>  "somewhere".
>   Should be named "core.XXXXXX" where XXXXXX is a pid.
>
> Run gdb on the core file similar to:
>
> gdb<path>/tmp/sysroots/x86_64-linux/usr/bin/rpm.real<path>/core.XXXXXX
>
> assuming that is successful, you should be able to type "bt" and figure out
> where the crash occurred.
>
>
> Again let me know if you get any reasonable results and I can further investigate.
>
> --Mark
>
>>> | ERROR: Function 'do_rootfs' failed (see
>>> /home/sandybridge/poky/build/tmp/work/sugarbay-poky-linux/poky-image-minimal-black-1.0-r0/temp/log.do_rootfs.21768
>>> for further information)
>>> NOTE: package poky-image-minimal-black-1.0-r0: task do_rootfs: Failed
>>> ERROR:
>>> '/home/sandybridge/poky/meta/recipes-core/images/poky-image-minimal-black.bb
>>> <http://poky-image-minimal-black.bb>' failed
>>> ERROR: Task 179
>>> (/home/sandybridge/poky/meta/recipes-core/images/poky-image-minimal-black.bb
>>> <http://poky-image-minimal-black.bb>, do_rootfs) failed with exit code '1'
>>>
>>> Can you help me to find the solution !!!!!!
>>>
>>> Chinmaya
>>>
>>>
>>> _______________________________________________
>>> poky mailing list
>>> poky@yoctoproject.org
>>> https://lists.yoctoproject.org/listinfo/poky
>>
>>
>> _______________________________________________
>> poky mailing list
>> poky@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/poky
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky


--------------080504060105020309010409
Content-Type: text/plain; name="backtrace.en"
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename="backtrace.en"

IyBnZGIgL21udC9zZGE4L3Bva3ktbmVpbC9idWlsZC90bXAvc3lzcm9vdHMveDg2XzY0LWxpbnV4
L3Vzci9iaW4vcnBtLnJlYWwgCkdOVSBnZGIgKEdEQikgNy4yLXVidW50dQpDb3B5cmlnaHQgKEMp
IDIwMTAgRnJlZSBTb2Z0d2FyZSBGb3VuZGF0aW9uLCBJbmMuCkxpY2Vuc2UgR1BMdjMrOiBHTlUg
R1BMIHZlcnNpb24gMyBvciBsYXRlciA8aHR0cDovL2dudS5vcmcvbGljZW5zZXMvZ3BsLmh0bWw+
ClRoaXMgaXMgZnJlZSBzb2Z0d2FyZTogeW91IGFyZSBmcmVlIHRvIGNoYW5nZSBhbmQgcmVkaXN0
cmlidXRlIGl0LgpUaGVyZSBpcyBOTyBXQVJSQU5UWSwgdG8gdGhlIGV4dGVudCBwZXJtaXR0ZWQg
YnkgbGF3LiAgVHlwZSAic2hvdyBjb3B5aW5nIgphbmQgInNob3cgd2FycmFudHkiIGZvciBkZXRh
aWxzLgpUaGlzIEdEQiB3YXMgY29uZmlndXJlZCBhcyAieDg2XzY0LWxpbnV4LWdudSIuCkZvciBi
dWcgcmVwb3J0aW5nIGluc3RydWN0aW9ucywgcGxlYXNlIHNlZToKPGh0dHA6Ly93d3cuZ251Lm9y
Zy9zb2Z0d2FyZS9nZGIvYnVncy8+Li4uClJlYWRpbmcgc3ltYm9scyBmcm9tIC9tbnQvc2RhOC9w
b2t5LW5laWwvYnVpbGQvdG1wL3N5c3Jvb3RzL3g4Nl82NC1saW51eC91c3IvYmluL3JwbS5yZWFs
Li4uZG9uZS4KCihnZGIpIGIgcnBtc21TdGFnZQpGdW5jdGlvbiAicnBtc21TdGFnZSIgbm90IGRl
ZmluZWQuCk1ha2UgYnJlYWtwb2ludCBwZW5kaW5nIG9uIGZ1dHVyZSBzaGFyZWQgbGlicmFyeSBs
b2FkPyAoeSBvciBbbl0pIHkKQnJlYWtwb2ludCAxIChycG1zbVN0YWdlKSBwZW5kaW5nLgooZ2Ri
KSByIC0tZGJwYXRoIC92YXIvbGliL3JwbSAnLS1kZWZpbmU9X29wZW5hbGxfYmVmb3JlX2Nocm9v
dCAxJyAtLXJvb3QgL21udC9zZGE4L3Bva3ktbmVpbC9idWlsZC90bXAvd29yay9xZW11eDg2LXBv
a3ktbGludXgvY29yZS1pbWFnZS1sc2ItMS4wLXIwL3Jvb3RmcyAtLXByZWRlZmluZSAnX3JwbWRz
X3N5c2luZm9fcGF0aCAvbW50L3NkYTgvcG9reS1uZWlsL2J1aWxkL3RtcC93b3JrL3FlbXV4ODYt
cG9reS1saW51eC9jb3JlLWltYWdlLWxzYi0xLjAtcjAvcm9vdGZzL2V0Yy9ycG0vc3lzaW5mbycg
LS1wcmVkZWZpbmUgJ19ycG1yY19wbGF0Zm9ybV9wYXRoIC9tbnQvc2RhOC9wb2t5LW5laWwvYnVp
bGQvdG1wL3dvcmsvcWVtdXg4Ni1wb2t5LWxpbnV4L2NvcmUtaW1hZ2UtbHNiLTEuMC1yMC9yb290
ZnMvZXRjL3JwbS9wbGF0Zm9ybScgLUQgJ19kYnBhdGggL3Zhci9saWIvcnBtJyAtLW5vc2NyaXB0
cyAtLW5vdHJpZ2dlcnMgLS1ub3BhcmVudGRpcnMgLS1ub2xpbmt0b3MgLUQgJ19fZGJpX3R4biBj
cmVhdGUgbm9mc3luYyBwcml2YXRlJyAtVWh2IC9tbnQvc2RhOC9wb2t5LW5laWwvYnVpbGQvdG1w
L3dvcmsvcWVtdXg4Ni1wb2t5LWxpbnV4L2NvcmUtaW1hZ2UtbHNiLTEuMC1yMC9yb290ZnMvaW5z
dGFsbC9pbnN0YWxsX3NvbHV0aW9uLm1hbmlmZXN0ClN0YXJ0aW5nIHByb2dyYW06IC9tbnQvc2Rh
OC9wb2t5LW5laWwvYnVpbGQvdG1wL3N5c3Jvb3RzL3g4Nl82NC1saW51eC91c3IvYmluL3JwbS5y
ZWFsIC0tZGJwYXRoIC92YXIvbGliL3JwbSAnLS1kZWZpbmU9X29wZW5hbGxfYmVmb3JlX2Nocm9v
dCAxJyAtLXJvb3QgL21udC9zZGE4L3Bva3ktbmVpbC9idWlsZC90bXAvd29yay9xZW11eDg2LXBv
a3ktbGludXgvY29yZS1pbWFnZS1sc2ItMS4wLXIwL3Jvb3RmcyAtLXByZWRlZmluZSAnX3JwbWRz
X3N5c2luZm9fcGF0aCAvbW50L3NkYTgvcG9reS1uZWlsL2J1aWxkL3RtcC93b3JrL3FlbXV4ODYt
cG9reS1saW51eC9jb3JlLWltYWdlLWxzYi0xLjAtcjAvcm9vdGZzL2V0Yy9ycG0vc3lzaW5mbycg
LS1wcmVkZWZpbmUgJ19ycG1yY19wbGF0Zm9ybV9wYXRoIC9tbnQvc2RhOC9wb2t5LW5laWwvYnVp
bGQvdG1wL3dvcmsvcWVtdXg4Ni1wb2t5LWxpbnV4L2NvcmUtaW1hZ2UtbHNiLTEuMC1yMC9yb290
ZnMvZXRjL3JwbS9wbGF0Zm9ybScgLUQgJ19kYnBhdGggL3Zhci9saWIvcnBtJyAtLW5vc2NyaXB0
cyAtLW5vdHJpZ2dlcnMgLS1ub3BhcmVudGRpcnMgLS1ub2xpbmt0b3MgLUQgJ19fZGJpX3R4biBj
cmVhdGUgbm9mc3luYyBwcml2YXRlJyAtVWh2IC9tbnQvc2RhOC9wb2t5LW5laWwvYnVpbGQvdG1w
L3dvcmsvcWVtdXg4Ni1wb2t5LWxpbnV4L2NvcmUtaW1hZ2UtbHNiLTEuMC1yMC9yb290ZnMvaW5z
dGFsbC9pbnN0YWxsX3NvbHV0aW9uLm1hbmlmZXN0CltUaHJlYWQgZGVidWdnaW5nIHVzaW5nIGxp
YnRocmVhZF9kYiBlbmFibGVkXQplcnJvcjogTE9PUDoKZXJyb3I6IHJlbW92aW5nIGdldHRleHQt
MC4xNy1yNS5pNTg2ICJSZXF1aXJlczogZ2V0dGV4dC1kZXYgPj0gMC4xNyIgZnJvbSB0c29ydCBy
ZWxhdGlvbnMuCmVycm9yOiByZW1vdmluZyBnZXR0ZXh0LWRldi0wLjE3LXI1Lmk1ODYgIlJlcXVp
cmVzOiBnZXR0ZXh0ID0gMC4xNy1yNSIgZnJvbSB0c29ydCByZWxhdGlvbnMuClByZXBhcmluZy4u
LiAgICAgICAgICAgICAgICAKUHJvZ3JhbSByZWNlaXZlZCBzaWduYWwgU0lHU0VHViwgU2VnbWVu
dGF0aW9uIGZhdWx0LgoweDAwMDA3ZmZmZjc0NTUxZWEgaW4gZnBMb29rdXBTdWJkaXIgKHN5bWxp
bmtzPTB4MTUzMDllMCwgZnBoYXNoPTB4MTUzMDA4MCwgZnBjPTB4ZmE3NzYwLCBfcD0weDE3NDc3
ZDAsIGZpbGVucj04NzYpIGF0IGZwcmludC5jOjM1MQozNTEgICAgICAgICBmbGluayA9IGZpLT5m
bGlua3NbZnhdOwooZ2RiKSBidAojMCAgMHgwMDAwN2ZmZmY3NDU1MWVhIGluIGZwTG9va3VwU3Vi
ZGlyIChzeW1saW5rcz0weDE1MzA5ZTAsIGZwaGFzaD0weDE1MzAwODAsIGZwYz0weGZhNzc2MCwg
X3A9MHgxNzQ3N2QwLCBmaWxlbnI9ODc2KSBhdCBmcHJpbnQuYzozNTEKIzEgIDB4MDAwMDdmZmZm
NzczYzcxMiBpbiBycG10c0FkZEZpbmdlcnByaW50cyAodHM9MHg2MmM0MzAsIGZpbGVDb3VudD0z
MjQ3MSwgaHQ9MHgxNTMwMDgwLCBmcGM9MHhmYTc3NjApIGF0IHRyYW5zYWN0aW9uLmM6MTMwOAoj
MiAgMHgwMDAwN2ZmZmY3NzNjZWM4IGluIHJwbXRzUHJlcGFyZSAodHM9MHg2MmM0MzAsIHN4PTB4
MCwgZmlsZUNvdW50PTMyNDcxLCBucm12ZHA9MHg3ZmZmZmZmZmQ3NDQpIGF0IHRyYW5zYWN0aW9u
LmM6MTUyNQojMyAgMHgwMDAwN2ZmZmY3NzNlM2NmIGluIF9ycG10c1J1biAodHM9MHg2MmM0MzAs
IG9rUHJvYnM9MHgwLCBpZ25vcmVTZXQ9NDgpIGF0IHRyYW5zYWN0aW9uLmM6MjA5NAojNCAgMHgw
MDAwN2ZmZmY3NzJjMDFmIGluIHJwbWNsaUluc3RhbGxSdW4gKHRzPTB4NjJjNDMwLCBva1Byb2Jz
PTB4MCwgaWdub3JlU2V0PTQ4KSBhdCBycG1pbnN0YWxsLmM6MzMxCiM1ICAweDAwMDA3ZmZmZjc3
MmNmNzEgaW4gcnBtY2xpSW5zdGFsbCAodHM9MHg2MmM0MzAsIGlhPTB4NjA3NWEwLCBhcmd2PTB4
NjA5OTMwKSBhdCBycG1pbnN0YWxsLmM6NzA3CiM2ICAweDAwMDAwMDAwMDA0MDRmOWMgaW4gbWFp
biAoYXJnYz0yMCwgYXJndj0weDdmZmZmZmZmZGFkOCkgYXQgLi9ycG1xdi5jOjk0NwooZ2RiKSBw
IGZpCiQxID0gKHJwbWZpKSAweDI1ZDFhMjAKKGdkYikgcCAqZmkKJDIgPSB7X2l0ZW0gPSB7dXNl
ID0gMHgyNWQxYmEwLCBwb29sID0gMHg2OWU0MzAsIG5leHQgPSAweDB9LCBpID0gMSwgaiA9IDAs
IFR5cGUgPSAweDAsIHRhZ04gPSAxOTExNTAyNCwgaCA9IDB4MjVkMzE0MCwgYm5sID0gMHgxMjNh
MjYwLCBkbmwgPSAweDEyM2FjNDAsIGZkaWdlc3RzID0gMHgxMjNhMjkwLCAKICBmZGlnZXN0YWxn
b3MgPSAweDI1ZDMxYzAsIGZsaW5rcyA9IDB4MCwgZmxhbmdzID0gMHgxMjNhYWQwLCBkaWwgPSAw
eDEwMGNjMzAsIGZmbGFncyA9IDB4MjZjMWE5MCwgZnNpemVzID0gMHgyNWQxOTQwLCBmbXRpbWVz
ID0gMHgwLCBmbW9kZXMgPSAweDAsIGZyZGV2cyA9IDB4MCwgZmlub2RlcyA9IDB4NjA2LCAKICBm
dXNlciA9IDB4NWI1LCBmZ3JvdXAgPSAweDAsIGZzdGF0ZXMgPSAweDAsIGZjb2xvcnMgPSAweDAs
IGZjYXBzID0gMHgyNWQyNGQwLCBmY29udGV4dHMgPSAweDAsIGNkaWN0ID0gMHg0MDNmMDAwMDAw
MDAsIG5jZGljdCA9IDE5MTE0OTI4LCBmY2RpY3R4ID0gMHgwLCBkZGljdCA9IDB4ZmZmZmZmZmYw
MDAwMDAwMCwgCiAgbmRkaWN0ID0gMCwgZmRkaWN0eCA9IDB4MCwgZmRkaWN0biA9IDB4MCwgdmZs
YWdzID0gMHgwLCBkYyA9IDAsIGZjID0gMCwgdGUgPSAweDAsIF9mbmJmID0gMHgwLCBleGNsdWRl
ID0gMHgwLCBuZXhjbHVkZSA9IDAsIGluY2x1ZGUgPSAweDAsIG5pbmNsdWRlID0gMCwgdWlkID0g
MCwgZ2lkID0gMCwgZmxhZ3MgPSAwLCAKICBhY3Rpb24gPSAwLCBhY3Rpb25zID0gMHg2MDUsIGZw
cyA9IDB4MCwgb2JubCA9IDB4MCwgb2RubCA9IDB4MCwgb2RpbCA9IDB4NzEsIGRpZ2VzdHMgPSAw
eDAsIGRpZ2VzdGFsZ28gPSAwLCBkaWdlc3RsZW4gPSAwLCBwcmV0cmFucyA9IDB4MCwgcHJldHJh
bnNwcm9nID0gMHgwLCBwb3N0dHJhbnMgPSAweDAsIAogIHBvc3R0cmFuc3Byb2cgPSAweDAsIHZl
cmlmeXNjcmlwdCA9IDB4MCwgdmVyaWZ5c2NyaXB0cHJvZyA9IDB4MCwgZm4gPSAweDAsIGZubGVu
ID0gMCwgYXN0cmlwbGVuID0gMCwgc3RyaXBsZW4gPSAwLCBhcmNoaXZlUG9zID0gMCwgYXJjaGl2
ZVNpemUgPSAzMywgZHBlcm1zID0gODE4NjI4OCwgZnBlcm1zID0gMCwgCiAgYXBhdGggPSAweDAs
IG1hcGZsYWdzID0gMCwgZm1hcGZsYWdzID0gMHgyMSwgZnNtID0gMHg3Y2U5YjAsIGNvbG9yID0g
MSwgaXNTb3VyY2UgPSAzMjc2NywgcmVwbGFjZWRTaXplcyA9IDB4MCwgcmVjb3JkID0gMzMsIG1h
Z2ljID0gMH0KKGdkYikgCgo=

--------------080504060105020309010409--
