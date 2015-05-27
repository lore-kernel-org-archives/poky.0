Return-Path: <garg1387@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1C787E0095D; Wed, 27 May 2015 03:41:00 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (garg1387[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.216.177 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qc0-f177.google.com (mail-qc0-f177.google.com
	[209.85.216.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B6E23E00293
	for <poky@yoctoproject.org>; Wed, 27 May 2015 03:40:56 -0700 (PDT)
Received: by qcxw10 with SMTP id w10so1908651qcx.3
	for <poky@yoctoproject.org>; Wed, 27 May 2015 03:40:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=yoDXWcclIiUsw6ndNTnT8qMoczRZPJqtziOJ0jWT3Ac=;
	b=gNqZNVAx97O5vhzobT4dTRIjOhBxoxY8AGT54AKY9zwQIaA1IXgRVMt95yWdoKMmK+
	aCh/MghSk6NJa03MZVciNCJgmQFmRtwaV4kda74onIoy8Scp/t0EGDIZLDsx5VxdC81c
	uEMv3GKUTHYS0jIvaPF3uvHLVTMhXhqf2J40I3Uv8q1WDU0TLnayStu1JyDEMvzR9YaQ
	SMStcQmMRkfhTXEOwqallF6p7wS+ro81JYuqfLOgxTtckroyIUseNIMxPECdyarHLp2f
	3Wg+qM73dwlOtbyFyJylNs/Q2xSkbqLImh+uHoLq9nHIiy8TWLfa48PIJJ4+AJj+qrvA
	nRGQ==
MIME-Version: 1.0
X-Received: by 10.140.235.68 with SMTP id g65mr41156863qhc.96.1432723256066;
	Wed, 27 May 2015 03:40:56 -0700 (PDT)
Received: by 10.140.151.65 with HTTP; Wed, 27 May 2015 03:40:56 -0700 (PDT)
Date: Wed, 27 May 2015 16:10:56 +0530
Message-ID: <CAC484MC266YDU2f+oLou6+44TZehCLN=Tc8Vsi=0kmw=+RVBjQ@mail.gmail.com>
From: akash garg <garg1387@gmail.com>
To: poky@yoctoproject.org
Subject: ERROR: Function failed: Fetcher failure for URL: 'git://git.yoctoproject.org/
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
X-List-Received-Date: Wed, 27 May 2015 10:41:00 -0000
Content-Type: multipart/alternative; boundary=001a113762f8bd4b7305170de075

--001a113762f8bd4b7305170de075
Content-Type: text/plain; charset=UTF-8

while using kernel-lab-1.4 following error will come due to which bitbake
not work please help me in this case. all works perfectly for meta-lab1 but
when i use meta-lab2 error comes

Error:

WARNING: Failed to fetch URL git://
git.yoctoproject.org/linux-yocto-3.8.git;protocol=git;bareclone=1;branch=standard/common-pc/base,meta;name=machine,meta,
attempting MIRRORS if available
ERROR: Fetcher failure: Fetch command failed with exit code 128, output:
Cloning into bare repository
'/home/secure/poky-dylan-9.0.0/build/downloads/git2/git.yoctoproject.org.linux-yocto-3.8.git'...

fatal: unable to connect to git.yoctoproject.org:
git.yoctoproject.org[0: 140.211.169.56]: errno=Connection timed out


ERROR: Function failed: Fetcher failure for URL: 'git://
git.yoctoproject.org/linux-yocto-3.8.git;protocol=git;bareclone=1;branch=standard/common-pc/base,meta;name=machine,meta'.
Unable to fetch URL from any source.
ERROR: Logfile of failure stored in:
/home/secure/poky-dylan-9.0.0/build/tmp/work/lab2_qemux86-poky-linux/linux-yocto/3.8.11+gitAUTOINC+8482dcdf68f9f7501118f4c01fdcb8f851882997_dd089cb5ba37ea14e8f90a884bf2a5be64ed817d-r4.1.0/temp/log.do_fetch.2398
ERROR: Task 846 (/home/secure/poky-dylan-9.0.0/meta/recipes-kernel/linux/
linux-yocto_3.8.bb, do_fetch) failed with exit code '1'






-- 
Thanks & Regards
Akash Garg
+918890742326

--001a113762f8bd4b7305170de075
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">while using kernel-lab-1.4 following error will come due t=
o which bitbake not work please help me in this case. all works perfectly f=
or meta-lab1 but when i use meta-lab2 error comes<div><br></div><div>Error:=
</div><div><br></div><div><div>WARNING: Failed to fetch URL git://<a href=
=3D"http://git.yoctoproject.org/linux-yocto-3.8.git;protocol=3Dgit;bareclon=
e=3D1;branch=3Dstandard/common-pc/base,meta;name=3Dmachine,meta">git.yoctop=
roject.org/linux-yocto-3.8.git;protocol=3Dgit;bareclone=3D1;branch=3Dstanda=
rd/common-pc/base,meta;name=3Dmachine,meta</a>, attempting MIRRORS if avail=
able</div><div>ERROR: Fetcher failure: Fetch command failed with exit code =
128, output:</div><div>Cloning into bare repository &#39;/home/secure/poky-=
dylan-9.0.0/build/downloads/git2/git.yoctoproject.org.linux-yocto-3.8.git&#=
39;...</div><div><br></div><div>fatal: unable to connect to <a href=3D"http=
://git.yoctoproject.org">git.yoctoproject.org</a>:</div><div><a href=3D"htt=
p://git.yoctoproject.org">git.yoctoproject.org</a>[0: 140.211.169.56]: errn=
o=3DConnection timed out</div><div><br></div><div><br></div><div>ERROR: Fun=
ction failed: Fetcher failure for URL: &#39;git://<a href=3D"http://git.yoc=
toproject.org/linux-yocto-3.8.git;protocol=3Dgit;bareclone=3D1;branch=3Dsta=
ndard/common-pc/base,meta;name=3Dmachine,meta">git.yoctoproject.org/linux-y=
octo-3.8.git;protocol=3Dgit;bareclone=3D1;branch=3Dstandard/common-pc/base,=
meta;name=3Dmachine,meta</a>&#39;. Unable to fetch URL from any source.</di=
v><div>ERROR: Logfile of failure stored in: /home/secure/poky-dylan-9.0.0/b=
uild/tmp/work/lab2_qemux86-poky-linux/linux-yocto/3.8.11+gitAUTOINC+8482dcd=
f68f9f7501118f4c01fdcb8f851882997_dd089cb5ba37ea14e8f90a884bf2a5be64ed817d-=
r4.1.0/temp/log.do_fetch.2398</div><div>ERROR: Task 846 (/home/secure/poky-=
dylan-9.0.0/meta/recipes-kernel/linux/<a href=3D"http://linux-yocto_3.8.bb"=
>linux-yocto_3.8.bb</a>, do_fetch) failed with exit code &#39;1&#39;</div><=
div><br></div><div><br></div><div><br></div><div><br></div></div><div><br c=
lear=3D"all"><div><br></div>-- <br><div class=3D"gmail_signature"><div dir=
=3D"ltr"><div>Thanks &amp; Regards<div>Akash Garg</div><div>+918890742326</=
div></div></div></div>
</div></div>

--001a113762f8bd4b7305170de075--
