Return-Path: <chgans@gna.org>
Received: from mailx.techworks.ie (mailx.techworks.ie [88.198.36.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 27CE2E00310
	for <poky@yoctoproject.org>; Sun,  6 Nov 2011 05:06:12 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
	by mailx.techworks.ie (Postfix) with ESMTP id 4A5725E0041
	for <poky@yoctoproject.org>; Sun,  6 Nov 2011 13:06:12 +0000 (GMT)
X-Virus-Scanned: amavisd-new at techworks.ie
Received: from mailx.techworks.ie ([127.0.0.1])
	by localhost (mailx.techworks.ie [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gp8dwHCaK3gB for <poky@yoctoproject.org>;
	Sun,  6 Nov 2011 13:06:09 +0000 (GMT)
Received: from archeopterix.techworks.local (unknown [89.100.127.27])
	by mailx.techworks.ie (Postfix) with ESMTPSA id 523FD5E0034
	for <poky@yoctoproject.org>; Sun,  6 Nov 2011 13:06:09 +0000 (GMT)
Message-ID: <4EB68640.4080809@gna.org>
Date: Sun, 06 Nov 2011 13:06:08 +0000
From: Christian Gagneraud <chgans@gna.org>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:7.0.1) Gecko/20110929 Thunderbird/7.0.1
MIME-Version: 1.0
To: poky@yoctoproject.org
References: <CANv1b=0WaEi032+aBYPstKwvG6C-QD3aXbEa-947k_P_7aiLYA@mail.gmail.com>
In-Reply-To: <CANv1b=0WaEi032+aBYPstKwvG6C-QD3aXbEa-947k_P_7aiLYA@mail.gmail.com>
Subject: Re: content of build/tmp/work folder?
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
X-List-Received-Date: Sun, 06 Nov 2011 13:06:13 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 8bit

On 06/11/11 08:48, Matthias Dübon wrote:
> Hello everyone,
>
> I am just starting to dive into Poky (and embedded linux). I really like
> the concept and the idea of Yocto(resp. Poky) and up to now (almost)
> everything worked as expected. But the build/tmp/work directory is
> puzzling me.
> The handbook stated "this directory contains various subdirectories for
> each architecture". In m my working directory I found the following folders:
>
> all-poky-linux
> beagleboard-poky-linux-gnueabi
> i686-nativesdk-pokysdk-linux
> qemux86-poky-linux
> armv5te-poky-linux-gnueabi
> i586-poky-linux
> i686-pokysdk-linux
> armv7a-vfp-neon-poky-linux-gnueabi
> i686-linux
> qemuarm-poky-linux-gnueabi
>
> Ok, beagleboard-poky-linux-gnueabi, qemuarm-poky-linux-gnueabi, ... are
> architectures I build. But what about the others folders. What the
> meaning of all-poky-linux?
>
> A rough explanation would be very helpful.

"all" stands for all architectures, it contains stuff like python, perl, 
etc... which are architecture independent.
"beagleboard" and "qemuarm" are machine specific, "armv5te" and "i586" 
are architecture specific.

Chris

>
> --
> Regards
> Matthias Dübon
>
> Ingenieurbüro Dübon
> Eberhardstr. 18
> 72072 Tuebingen
> Germany
>
> http://www.ing-duebon.de <http://www.ing-duebon.de/>
>
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky


-- 
Chris

