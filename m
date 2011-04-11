Return-Path: <jsauer@vernier.com>
Received: from pug.o-hand.com (3a.49.1343.static.theplanet.com [67.19.73.58])
	by mx1.pokylinux.org (Postfix) with ESMTP id 6413A4C80044
	for <poky@lists.pokylinux.org>; Mon, 11 Apr 2011 16:51:01 -0500 (CDT)
Received: by pug.o-hand.com (Postfix)
	id A87C012EC343; Mon, 11 Apr 2011 16:50:07 -0500 (CDT)
Received: from na3sys009aog102.obsmtp.com (na3sys009aog102.obsmtp.com
	[74.125.149.69])
	by pug.o-hand.com (Postfix) with SMTP id 1EB5A12EC32F
	for <poky@o-hand.com>; Mon, 11 Apr 2011 16:50:06 -0500 (CDT)
Received: from mail-wy0-f181.google.com ([74.125.82.181]) (using TLSv1) by
	na3sys009aob102.postini.com ([74.125.148.12]) with SMTP
	ID DSNKTaN3waiQ1nW9Piexsu/NoS6Rh5U2NdTJ@postini.com;
	Mon, 11 Apr 2011 14:51:00 PDT
Received: by mail-wy0-f181.google.com with SMTP id 11so5978662wyi.12
	for <poky@o-hand.com>; Mon, 11 Apr 2011 14:50:57 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.216.188.20 with SMTP id z20mr88632wem.66.1302558657397; Mon,
	11 Apr 2011 14:50:57 -0700 (PDT)
Received: by 10.216.241.8 with HTTP; Mon, 11 Apr 2011 14:50:57 -0700 (PDT)
Date: Mon, 11 Apr 2011 14:50:57 -0700
Message-ID: <BANLkTikxXCxeCfqnSC9kKRqVvCgF5=Ju+Q@mail.gmail.com>
From: Joe Sauer <jsauer@vernier.com>
To: poky@o-hand.com
Subject: requesting input on specs for a new Poky build server
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
X-List-Received-Date: Mon, 11 Apr 2011 21:51:01 -0000
Content-Type: multipart/alternative; boundary=0016364c77ff12c41e04a0ab9277

--0016364c77ff12c41e04a0ab9277
Content-Type: text/plain; charset=ISO-8859-1

I have the pleasure of spec'ing out a new server for doing Poky builds (we
are at Green 3.3.1).  As a reference point, my desktop machine is a
quad-Xeon @ 2.5 GHz with 4GB of RAM and SATA disk.  I can do a full "clean"
build for our LabQuest (armv5te) in 2 hours.

Here are some questions I would like to get feedback on regarding a build
server:

1.  Would I get better build time going with more procs (8?) or faster procs
(3+ GHz)?

2.  Are SATA drives OK, or should I go with RAID to get better R/W
performance?

3.  If I have to choose one or the other, should I go with faster procs or
faster disk I/O?

Thanks!

--Joe Sauer
Vernier Software & Technology

--0016364c77ff12c41e04a0ab9277
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

I have the pleasure of spec&#39;ing out a new server for doing Poky builds =
(we are at Green 3.3.1).=A0 As a reference point, my desktop machine is a q=
uad-Xeon @ 2.5 GHz with 4GB of RAM and SATA disk.=A0 I can do a full &quot;=
clean&quot; build for our LabQuest (armv5te) in 2 hours.<br>
<br>Here are some questions I would like to get feedback on regarding a bui=
ld server:<br><br>1.=A0 Would I get better build time going with more procs=
 (8?) or faster procs (3+ GHz)?<br><br>2.=A0 Are SATA drives OK, or should =
I go with RAID to get better R/W performance?<br>
<br>3.=A0 If I have to choose one or the other, should I go with faster pro=
cs or faster disk I/O?<br><br>Thanks!<br><br>--Joe Sauer<br>Vernier Softwar=
e &amp; Technology<br>

--0016364c77ff12c41e04a0ab9277--
