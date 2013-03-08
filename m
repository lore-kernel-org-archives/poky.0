Return-Path: <rjohnweber@gmail.com>
Received: from mail-ve0-f177.google.com (mail-ve0-f177.google.com
	[209.85.128.177]) (using TLSv1 with cipher RC4-SHA (128/128 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id 03442E014F2;
	Fri,  8 Mar 2013 07:35:54 -0800 (PST)
Received: by mail-ve0-f177.google.com with SMTP id m1so1341160ves.8
	for <multiple recipients>; Fri, 08 Mar 2013 07:35:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:message-id:date:from:user-agent:mime-version:to:cc
	:subject:references:in-reply-to:content-type
	:content-transfer-encoding;
	bh=JFPFgqRySJ8QNN3cpelmukPHIhcdvg94Aa+53YExIe0=;
	b=ik/c6sDJi24llZL9razypq033cGnHWL+HaxMsX7pFCWi90976H3rWTSzvTdRhDIb0b
	IjTiTLXgfFKqyaV4nrgPl3Cgj0bTaLqrzfKmHpsg48qpdPRKgWleDzY4s0jjGMDjHC/y
	Yqm0WNeJT8e36IA8GM4+oQkF87Qp/fo/D3aWQiSKNOk+Zkv4fCNyYzp2QKMbFoQCwHWU
	Xvibqh6Lu5JCxCb7H9L2X1XW3xLVWdxvGa/jHtpuYd5Uvuh2LBBBzpFq1jvNb0Qx1BB/
	6fKe3vj8Xn2qZtDsPMeaiTXDW97ScqA6ysGHK7tqvjQ+3GqrzaWPkxMrBG2BBqthelsy
	BqEw==
X-Received: by 10.52.72.137 with SMTP id d9mr920672vdv.105.1362756954023;
	Fri, 08 Mar 2013 07:35:54 -0800 (PST)
Received: from goober.local ([75.76.228.60])
	by mx.google.com with ESMTPS id p7sm1214924vdt.2.2013.03.08.07.35.52
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Fri, 08 Mar 2013 07:35:53 -0800 (PST)
Message-ID: <513A0558.6020703@gmail.com>
Date: Fri, 08 Mar 2013 09:35:52 -0600
From: John Weber <rjohnweber@gmail.com>
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.7;
	rv:17.0) Gecko/20130216 Thunderbird/17.0.3
MIME-Version: 1.0
To: Otavio Salvador <otavio@ossystems.com.br>
References: <51375B7C.9010106@gmail.com> <20130306224808.6efe1351@e6520eb>
	<5137BB73.2050607@gmail.com> <20130306230451.228caae1@e6520eb>
	<5138BE79.7060106@gmail.com> <5138D360.2020000@gmail.com>
	<CAP9ODKqaVVqHi9_90kO6bGuf8zk0MWk40a7M8RQ9MQi1tNgKxQ@mail.gmail.com>
In-Reply-To: <CAP9ODKqaVVqHi9_90kO6bGuf8zk0MWk40a7M8RQ9MQi1tNgKxQ@mail.gmail.com>
Cc: "meta-freescale@yoctoproject.org" <meta-freescale@yoctoproject.org>,
	"poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: [meta-freescale] Firmware loading
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
X-List-Received-Date: Fri, 08 Mar 2013 15:35:55 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

I could, but I think that these issues are probably resolved by using upstream 
sources, so I'm not sure if this is a bug for greater Yocto or not.  Does it 
make sense to file a bug, even if it is closed just for informational purposes?

I do think that this will be a problem for the following systems:
- Using a version of udev > 176 (I suspect this, as that is when udev moved to 
an internal-only firmware loading capability, but I know it is a problem for 182)
- Using a kernel < 3.7 (3.7 incorporated a filesystem firmware loading feature 
which bypasses udev)
- Drivers loading their firmware in the module init stage  (as the brcmfmac does)

I'd like to create a recipe to at least get this working in Yocto/Poky master 
for this and submit it to meta-freescale that would do the following:
- Patch the kernel to remove the staging drivers and add the 
net/wirelesss/brcm80211 backport
- Fetch the firmware from a *remote repository* and load it into the kernel's 
firmware directory
- Patch the defconfig to add the extra firmware to load into the kernel


On 3/8/13 6:15 AM, Otavio Salvador wrote:
> On Thu, Mar 7, 2013 at 2:50 PM, John Weber <rjohnweber@gmail.com> wrote:
>> I incorporated this blobs into the kernel image and it seems to have worked.
>> Not the best option, but it does move me forward.
>
> Can you make a bug report in https://bugzilla.yoctoproject.org/
>
> Please pay attention to select the meta-fsl-arm BSP; put the more
> information possible so we can fix it.
>
> --
> Otavio Salvador                             O.S. Systems
> E-mail: otavio@ossystems.com.br  http://www.ossystems.com.br
> Mobile: +55 53 9981-7854              http://projetos.ossystems.com.br
>

