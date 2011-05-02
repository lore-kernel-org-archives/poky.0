Return-Path: <cahoshing@gmail.com>
Received: from mail-pv0-f176.google.com (mail-pv0-f176.google.com
	[74.125.83.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id 233334C80479
	for <poky@yoctoproject.org>; Mon,  2 May 2011 09:29:55 -0500 (CDT)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by pve37 with SMTP id 37so4461395pve.35
	for <poky@yoctoproject.org>; Mon, 02 May 2011 07:29:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:date:message-id:subject:from:to
	:content-type; bh=VbQ1iQspID6E+1TxmAXqFcdVEMkADDpn40u/k9puSvY=;
	b=hKuo7gkt3WAKQZkOfFsjp2ZS3ib0cyTuCkhCqdqlG/QznpkWYPFeA8n0o9EP4dthAE
	YQ12+QK6SFzRNs6+TAOcZZ96Z3GYOCYQ6AeIqWCIJUyKvMclJlqVn3tlcv8MzlLHcMBK
	eyFQIrBxsEBOP0ADFLcvn+OGHSu76CTSea7kg=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:date:message-id:subject:from:to:content-type;
	b=awktf//txVAk6bitCKm3TDHsl8qH7qabC1DOY4TJ0caBAzt4yoM0BTQx69z1qS4J4Q
	NIId3BZTedWlIhHcdcSDIkp5pTOUK5qvExkKJEu1iAcokkUj+XKvXZhOyk4bHy5UVQVC
	0PADidHXxEnnwBOMnoNASacl+VrfGF3r+lRJ4=
MIME-Version: 1.0
Received: by 10.142.248.17 with SMTP id v17mr3101099wfh.260.1304346594096;
	Mon, 02 May 2011 07:29:54 -0700 (PDT)
Received: by 10.143.158.19 with HTTP; Mon, 2 May 2011 07:29:54 -0700 (PDT)
Date: Mon, 2 May 2011 19:59:54 +0530
Message-ID: <BANLkTi=Rmha4vm8L-K_LA76FM6xkMxaO0g@mail.gmail.com>
From: chinmaya hoshing <cahoshing@gmail.com>
To: poky@yoctoproject.org
Subject: Error in Pulling cyrus-sasl
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
X-List-Received-Date: Mon, 02 May 2011 14:29:55 -0000
Content-Type: multipart/alternative; boundary=00504502c9eb67b61604a24bdb52

--00504502c9eb67b61604a24bdb52
Content-Type: text/plain; charset=ISO-8859-1

Hi,

I am trying to port Poky to the "sandybridge platform" and  using the branch
"bernard" for "sugarbay" machine.
I am running Ubuntu 10.10 on 64 bit machine.
In this  I am trying to pull cyrus-sasl_2.1.23 which is required by openldap
Following is the error I am getting :-

config.status: creating man/Makefile
| config.status: creating config.h
| config.status: executing depfiles commands
| configure: configuring in saslauthd
| configure: running /bin/sh './configure'
--prefix=/home/sct/logi_sandybridge/poky/build/tmp/work/snb-poky-linux/cyrus-sasl-2.1.23-r10/image/usr
 '--prefix=/home/sct/logi_sandybridge/poky/build/tmp/work/snb-poky-linux/cyrus-sasl-2.1.23-r10/image/usr'
'--disable-anon' '--disable-cram' '--disable-digest' '--disable-gssapi'
'--enable-login' '--disable-otp' '--enable-plain' 'CC=x86_64-poky-linux-gcc
-m64 --sysroot=/home/sct/logi_sandybridge/poky/build/tmp/sysroots/sugarbay'
'CFLAGS=-fexpensive-optimizations -fomit-frame-pointer -frename-registers
-O2 -ggdb -feliminate-unused-debug-types' 'CPP=x86_64-poky-linux-gcc -E
--sysroot=/home/sct/logi_sandybridge/poky/build/tmp/sysroots/sugarbay'
'LDFLAGS=-Wl,-O1 -Wl,--as-needed' --cache-file=.././config.cache --srcdir=.
| configure: loading site script
/home/sct/logi_sandybridge/poky/meta/site/endian-little
| configure: loading site script
/home/sct/logi_sandybridge/poky/meta/site/common-glibc
| configure: loading site script
/home/sct/logi_sandybridge/poky/meta/site/x86_64-linux
| configure: loading site script
/home/sct/logi_sandybridge/poky/meta/site/common
| configure: loading site script
/home/sct/logi_sandybridge/poky/build/tmp/sysroots/sugarbay/usr/share/x86_64-poky-linux_config_site.d/zlib_config
| configure: loading site script
/home/sct/logi_sandybridge/poky/build/tmp/sysroots/sugarbay/usr/share/x86_64-poky-linux_config_site.d/eglibc_config
| configure: loading cache .././config.cache
| configure: error: `LDFLAGS' has changed since the previous run:
| configure:   former value:  -Wl,-O1  -Wl,--as-needed
| configure:   current value: -Wl,-O1 -Wl,--as-needed
| configure: error: changes in the environment can compromise the build
| configure: error: run `make distclean' and/or `rm .././config.cache' and
start over
| configure: error: /bin/sh './configure' failed for saslauthd
| ERROR: Function 'do_configure' failed (see
/home/logi_sandybridge/poky/build/tmp/work/snb-poky-linux/cyrus-sasl-2.1.23-r10/temp/log.do_configure.31826
for further information)
NOTE: package cyrus-sasl-2.1.23-r10: task do_configure: Failed
ERROR: Task 2986 (/home/sandybridge/poky/meta/recipes-support/cyrus-sasl/
cyrus-sasl_2.1.23.bb, do_configure) failed with exit code '1'
Waiting for 1 active tasks to finish:
0: poky-image-minimal-initramfs-1.0-r0 do_rootfs (pid 31759)
NOTE: package poky-image-minimal-initramfs-1.0-r0: task do_rootfs: Succeeded
ERROR: '/home/logi_sandybridge/poky/meta/recipes-support/cyrus-sasl/
cyrus-sasl_2.1.23.bb' failed


Can u help me to find out the solution

Regards Chinmaya

--00504502c9eb67b61604a24bdb52
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><meta http-equiv=3D"content-type" content=3D"text/html; ch=
arset=3Dutf-8"><span class=3D"Apple-style-span" style=3D"border-collapse: c=
ollapse; font-family: arial, sans-serif; font-size: 13px; "><span style=3D"=
border-collapse: collapse; font-family: arial, sans-serif; font-size: 13px;=
 ">Hi,<br>
<br>I am trying=A0<span>to</span>=A0port Poky=A0<span>to</span>=A0the &quot=
;sandybridge platform&quot; and=A0 using the branch &quot;bernard&quot; for=
 &quot;sugarbay&quot; machine.<br>I am running Ubuntu 10.10 on 64 bit machi=
ne.</span><div>
<font face=3D"arial, sans-serif"><span style=3D"border-collapse: collapse; =
">In this =A0I am trying to pull cyrus-sasl_2.1.23 which is required by ope=
nldap</span></font></div><div><font face=3D"arial, sans-serif"><span style=
=3D"border-collapse: collapse; ">Following is the error I am getting :-</sp=
an></font></div>
<div><font face=3D"arial, sans-serif"><span style=3D"border-collapse: colla=
pse; "><br></span></font></div><div><font face=3D"arial, sans-serif"><span =
style=3D"border-collapse: collapse; "><div>config.status: creating man/Make=
file</div>
<div>| config.status: creating config.h</div><div>| config.status: executin=
g depfiles commands</div><div>| configure: configuring in saslauthd</div><d=
iv>| configure: running /bin/sh &#39;./configure&#39; --prefix=3D/home/sct/=
logi_sandybridge/poky/build/tmp/work/snb-poky-linux/cyrus-sasl-2.1.23-r10/i=
mage/usr =A0&#39;--prefix=3D/home/sct/logi_sandybridge/poky/build/tmp/work/=
snb-poky-linux/cyrus-sasl-2.1.23-r10/image/usr&#39; &#39;--disable-anon&#39=
; &#39;--disable-cram&#39; &#39;--disable-digest&#39; &#39;--disable-gssapi=
&#39; &#39;--enable-login&#39; &#39;--disable-otp&#39; &#39;--enable-plain&=
#39; &#39;CC=3Dx86_64-poky-linux-gcc -m64 --sysroot=3D/home/sct/logi_sandyb=
ridge/poky/build/tmp/sysroots/sugarbay&#39; &#39;CFLAGS=3D-fexpensive-optim=
izations -fomit-frame-pointer -frename-registers -O2 -ggdb -feliminate-unus=
ed-debug-types&#39; &#39;CPP=3Dx86_64-poky-linux-gcc -E --sysroot=3D/home/s=
ct/logi_sandybridge/poky/build/tmp/sysroots/sugarbay&#39; &#39;LDFLAGS=3D-W=
l,-O1 -Wl,--as-needed&#39; --cache-file=3D.././config.cache --srcdir=3D.</d=
iv>
<div>| configure: loading site script /home/sct/logi_sandybridge/poky/meta/=
site/endian-little</div><div>| configure: loading site script /home/sct/log=
i_sandybridge/poky/meta/site/common-glibc</div><div>| configure: loading si=
te script /home/sct/logi_sandybridge/poky/meta/site/x86_64-linux</div>
<div>| configure: loading site script /home/sct/logi_sandybridge/poky/meta/=
site/common</div><div>| configure: loading site script /home/sct/logi_sandy=
bridge/poky/build/tmp/sysroots/sugarbay/usr/share/x86_64-poky-linux_config_=
site.d/zlib_config</div>
<div>| configure: loading site script /home/sct/logi_sandybridge/poky/build=
/tmp/sysroots/sugarbay/usr/share/x86_64-poky-linux_config_site.d/eglibc_con=
fig</div><div>| configure: loading cache .././config.cache</div><div>| conf=
igure: error: `LDFLAGS&#39; has changed since the previous run:</div>
<div>| configure: =A0 former value: =A0-Wl,-O1 =A0-Wl,--as-needed</div><div=
>| configure: =A0 current value: -Wl,-O1 -Wl,--as-needed</div><div>| config=
ure: error: changes in the environment can compromise the build</div><div>|=
 configure: error: run `make distclean&#39; and/or `rm .././config.cache&#3=
9; and start over</div>
<div>| configure: error: /bin/sh &#39;./configure&#39; failed for saslauthd=
</div><div>| ERROR: Function &#39;do_configure&#39; failed (see /home/logi_=
sandybridge/poky/build/tmp/work/snb-poky-linux/cyrus-sasl-2.1.23-r10/temp/l=
og.do_configure.31826 for further information)</div>
<div>NOTE: package cyrus-sasl-2.1.23-r10: task do_configure: Failed</div><d=
iv>ERROR: Task 2986 (/home/sandybridge/poky/meta/recipes-support/cyrus-sasl=
/<a href=3D"http://cyrus-sasl_2.1.23.bb">cyrus-sasl_2.1.23.bb</a>, do_confi=
gure) failed with exit code &#39;1&#39;</div>
<div>Waiting for 1 active tasks to finish:</div><div>0: poky-image-minimal-=
initramfs-1.0-r0 do_rootfs (pid 31759)</div><div>NOTE: package poky-image-m=
inimal-initramfs-1.0-r0: task do_rootfs: Succeeded</div><div>ERROR: &#39;/h=
ome/logi_sandybridge/poky/meta/recipes-support/cyrus-sasl/<a href=3D"http:/=
/cyrus-sasl_2.1.23.bb">cyrus-sasl_2.1.23.bb</a>&#39; failed</div>
<div><br></div><div><br></div><div>Can u help me to find out the solution</=
div><div><br></div><div>Regards Chinmaya</div></span></font></div></span></=
div>

--00504502c9eb67b61604a24bdb52--
