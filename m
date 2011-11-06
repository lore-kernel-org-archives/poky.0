Return-Path: <mail@ing-duebon.de>
Received: from leonardo.servertools24.de (leonardo.servertools24.de
	[31.47.248.18])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1D216E00310
	for <poky@yoctoproject.org>; Sun,  6 Nov 2011 01:49:00 -0700 (PDT)
Received: from mail-fx0-f48.google.com (mail-fx0-f48.google.com
	[209.85.161.48]) (Authenticated sender: web54p1)
	by leonardo.servertools24.de (Postfix) with ESMTP id 8F4391531A7D
	for <poky@yoctoproject.org>; Sun,  6 Nov 2011 09:48:54 +0100 (CET)
Received: by faap19 with SMTP id p19so1173884faa.35
	for <poky@yoctoproject.org>; Sun, 06 Nov 2011 01:48:54 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.223.77.71 with SMTP id f7mr37634274fak.33.1320569334318; Sun,
	06 Nov 2011 01:48:54 -0700 (PDT)
Received: by 10.223.79.77 with HTTP; Sun, 6 Nov 2011 01:48:54 -0700 (PDT)
Date: Sun, 6 Nov 2011 09:48:54 +0100
Message-ID: <CANv1b=0WaEi032+aBYPstKwvG6C-QD3aXbEa-947k_P_7aiLYA@mail.gmail.com>
From: =?ISO-8859-1?Q?Matthias_D=FCbon?= <mail@ing-duebon.de>
To: poky@yoctoproject.org
X-leonardo-MailScanner-Information: Please contact the ISP for more information
X-leonardo-MailScanner-ID: 8F4391531A7D.A3E51
X-leonardo-MailScanner: Found to be clean
X-leonardo-MailScanner-From: mail@ing-duebon.de
X-Spam-Status: No
Subject: content of build/tmp/work folder?
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
X-List-Received-Date: Sun, 06 Nov 2011 08:49:02 -0000
Content-Type: multipart/alternative; boundary=0015174be34e12c89f04b10d02c7

--0015174be34e12c89f04b10d02c7
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Hello everyone,

I am just starting to dive into Poky (and embedded linux). I really like
the concept and the idea of Yocto(resp. Poky) and up to now (almost)
everything worked as expected. But the build/tmp/work directory is puzzling
me.
The handbook stated "this directory contains various subdirectories for
each architecture". In m my working directory I found the following folders=
:

all-poky-linux
beagleboard-poky-linux-gnueabi
i686-nativesdk-pokysdk-linux
qemux86-poky-linux
armv5te-poky-linux-gnueabi
i586-poky-linux
i686-pokysdk-linux
armv7a-vfp-neon-poky-linux-gnueabi
i686-linux
qemuarm-poky-linux-gnueabi

Ok, beagleboard-poky-linux-gnueabi, qemuarm-poky-linux-gnueabi, ... are
architectures I build. But what about the others folders. What the meaning
of all-poky-linux?

A rough explanation would be very helpful.

--=20
Regards
Matthias D=FCbon

Ingenieurb=FCro D=FCbon
Eberhardstr. 18
72072 Tuebingen
Germany

http://www.ing-duebon.de

--0015174be34e12c89f04b10d02c7
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div>Hello everyone,</div><div><br></div><div>I am just starting to dive in=
to Poky (and embedded linux). I really like the concept and the idea of Yoc=
to(resp. Poky) and up to now (almost) everything worked as expected. But th=
e build/tmp/work directory is puzzling me.=A0</div>



<div>The handbook stated &quot;this directory contains various subdirectori=
es for each architecture&quot;. In m my working directory I found the follo=
wing folders:</div><div><br></div><div><span style=3D"background-color:tran=
sparent">all-poky-linux =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0</span><=
/div>



<div>beagleboard-poky-linux-gnueabi=A0</div><div>i686-nativesdk-pokysdk-lin=
ux =A0</div>
<div>qemux86-poky-linux</div><div><span style=3D"background-color:transpare=
nt">armv5te-poky-linux-gnueabi</span></div><div><span style=3D"background-c=
olor:transparent">i586-poky-linux</span></div><div><span style=3D"backgroun=
d-color:transparent">i686-pokysdk-linux</span></div>




<div>armv7a-vfp-neon-poky-linux-gnueabi=A0</div><div>i686-linux =A0 =A0 =A0=
 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0</div><div>qemuarm-poky-linux-gnueabi</div>=
<div><br></div><div>Ok, <span style=3D"background-color:transparent">beagle=
board-poky-linux-</span><span style=3D"background-color:transparent">gnueab=
i,=A0</span><span style=3D"background-color:transparent">qemuarm-poky-linux=
-gnueabi, ... are architectures I build. But what about the others folders.=
 What the meaning of all-poky-linux?</span></div>

<div><span style=3D"background-color:transparent"><br></span></div><div>A r=
ough explanation would be very helpful.</div><div><br></div><div><span styl=
e=3D"background-color: transparent; ">--=A0</span></div>Regards<br>Matthias=
 D=FCbon<br>
<br>Ingenieurb=FCro D=FCbon<br>Eberhardstr. 18<br>72072 Tuebingen<br>German=
y<br><br><a href=3D"http://www.ing-duebon.de/" target=3D"_blank">http://www=
.ing-duebon.de</a><br>

--0015174be34e12c89f04b10d02c7--
