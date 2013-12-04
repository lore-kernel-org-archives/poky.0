Return-Path: <laurentiu.palcu@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4FCD7E0078C
	for <poky@yoctoproject.org>; Tue,  3 Dec 2013 23:42:36 -0800 (PST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 03 Dec 2013 23:42:36 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.93,822,1378882800"; d="scan'208";a="444310440"
Received: from lpalcu-linux.rb.intel.com (HELO lpalcu-linux) ([10.237.105.41])
	by fmsmga002.fm.intel.com with ESMTP; 03 Dec 2013 23:42:33 -0800
Date: Wed, 4 Dec 2013 09:42:33 +0200
From: Laurentiu Palcu <laurentiu.palcu@intel.com>
To: "Keskinarkaus, Teemu" <Teemu.Keskinarkaus@Maximatecc.com>
Message-ID: <20131204074233.GJ6099@lpalcu-linux>
References: <83DB4EC8FADD45428E3CC4E3664761FD129FEFC2@AMDTCEX12.actuant.pri>
MIME-Version: 1.0
In-Reply-To: <83DB4EC8FADD45428E3CC4E3664761FD129FEFC2@AMDTCEX12.actuant.pri>
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: Source package with wrong directory in it
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
X-List-Received-Date: Wed, 04 Dec 2013 07:42:37 -0000
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit

On Wed, Dec 04, 2013 at 06:34:49AM +0000, Keskinarkaus, Teemu wrote:
> Hi,
> 
>  
> 
> This might be another user issue and not poky issue itself, but hopefully
> someone could help me here.
> 
>  
> 
> Usually when I download source package and unpack it will unpack itself to in
> directory name-version (eg. program-1.2.3) and yocto also assumes so. Well, I
> have managed to find one program that doesn’t have the version part of the
> directory name and haven’t been able to redirect the yocto/poky to use that
> program-directory without version to build the program.
> 
>  
> 
> Is there a way to do that within the recipe and not needing to touch the
> class-files? And this is program that’s not originally in yocto so it’s .bb and
> not .bbappend – file.
Did you try to set S = ${WORKDIR}/program-blah-blah in the recipe?

Here's an example:
meta/recipes-extended/zip/zip_3.0.bb

I hope this helps,
Laurentiu

> 
>  
> 
> And I don’t want to start repacking the software or trying to convince the
> author to rename the package since there might be other similar sources as
> well.
> 
>  
> 
> Teemu Keskinarkaus
> 
> 
>  
> 
> 
> ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
> 
> Actuant Corporation Email Notice
> 
> This message is intended only for the use of the Addressee and may contain
> information that is PRIVILEGED and/or CONFIDENTIAL.
> This email is intended only for the personal and confidential use of the
> recipient(s) named above. If the reader of this email is not an intended
> recipient, you have received this email in error and any review, dissemination,
> distribution or copying is strictly prohibited.
> If you have received this email in error, please notify the sender immediately
> by return mail and permanently delete the copy you received.
> 
> Thank you.

> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky


