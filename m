Return-Path: <aalonso00@gmail.com>
Received: from mail-bw0-f48.google.com (mail-bw0-f48.google.com
	[209.85.214.48])
	by mx1.pokylinux.org (Postfix) with ESMTP id 3D9424C80039
	for <poky@yoctoproject.org>; Thu, 23 Dec 2010 12:27:38 -0600 (CST)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by bwz8 with SMTP id 8so6745910bwz.35
	for <poky@yoctoproject.org>; Thu, 23 Dec 2010 10:27:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:received:received:date:message-id
	:subject:from:to:content-type;
	bh=s0jleyfIvjkQyWzAfLgjisTjSsfviojVbN00D0cvqUc=;
	b=xuptWXP+hz4Ds7nIixIV/Z41V3d7pN80sAcv1UB6zUOCFHPG2vcfwh2Qc4y+RwmFUO
	7tfX4n4AJsCQtOKS4APErL5WPnEir4xtG8Sctu7kGIs5g4NcDigdrpKXsLYR+tPthBLP
	+HGzmsCpgbWC9BHTlpxFexifV+WCFC0pKV+o0=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:date:message-id:subject:from:to:content-type;
	b=uuhvjI77Kwf7R9xDcOfPLIvn8MBoWDMteDIwSh76HWcJl/VetWmCa6hW7svyxmM6fo
	n61S8POTn8AmWbp85yV+VSIC0mgIlYtIRZv+zhxNjL+JGDHs0JyllTYApBlcL5HA+/aU
	CPR58rnu5Q00bW2BXJjDeqp5BK8v0ThKf1Xdg=
MIME-Version: 1.0
Received: by 10.204.67.140 with SMTP id r12mr7478178bki.147.1293128856325;
	Thu, 23 Dec 2010 10:27:36 -0800 (PST)
Received: by 10.204.3.210 with HTTP; Thu, 23 Dec 2010 10:27:36 -0800 (PST)
Date: Thu, 23 Dec 2010 12:27:36 -0600
Message-ID: <AANLkTim9iax+7aW3tmBUtmCdjtgAr0nT5U0nhwi+j2Ay@mail.gmail.com>
From: Adrian Alonso <aalonso00@gmail.com>
To: poky@yoctoproject.org
Subject: pseudo native build fails on Fedora 14
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
X-List-Received-Date: Thu, 23 Dec 2010 18:27:38 -0000
Content-Type: multipart/alternative; boundary=001636c5b2bb214e390498180654

--001636c5b2bb214e390498180654
Content-Type: text/plain; charset=ISO-8859-1

I start a build from scratch and pseudo-native fails to build
at link stage:

...
/usr/bin/ld: skipping incompatible
/usr/lib/gcc/x86_64-redhat-linux/4.5.1/libgcc_s.so when searching for
-lgcc_s
| /usr/bin/ld: cannot find -lgcc_s
| collect2: ld returned 1 exit status
....

Full log at [http://pastebin.com/aP27aJ3X]

Any advice to fix it?

-- 
Saludos
Adrian Alonso
http://aalonso.wordpress.com

--001636c5b2bb214e390498180654
Content-Type: text/html; charset=ISO-8859-1

I start a build from scratch and pseudo-native fails to build<div>at link stage:</div><div><br></div><div>...</div><div><div>/usr/bin/ld: skipping incompatible /usr/lib/gcc/x86_64-redhat-linux/4.5.1/libgcc_s.so when searching for -lgcc_s</div>

<div>| /usr/bin/ld: cannot find -lgcc_s</div><div>| collect2: ld returned 1 exit status</div>....</div><div><br></div><div>Full log at [<a href="http://pastebin.com/aP27aJ3X">http://pastebin.com/aP27aJ3X</a>]</div><div><br>
</div><div>Any advice to fix it?</div><div><br>-- <br>Saludos<br>Adrian Alonso<br><a href="http://aalonso.wordpress.com" target="_blank">http://aalonso.wordpress.com</a><br>
<br>
</div>

--001636c5b2bb214e390498180654--
