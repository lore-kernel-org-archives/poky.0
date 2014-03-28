Return-Path: <elizabeth.flanagan@intel.com>
Received: from mail-ve0-f181.google.com (mail-ve0-f181.google.com
	[209.85.128.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2F421E00BD2
	for <poky@yoctoproject.org>; Fri, 28 Mar 2014 12:48:22 -0700 (PDT)
Received: by mail-ve0-f181.google.com with SMTP id oy12so6129619veb.40
	for <poky@yoctoproject.org>; Fri, 28 Mar 2014 12:48:21 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type;
	bh=mGc1lzHC72MxN6cJkdH9siC94W/yMDhv+9n1v6DtALM=;
	b=CakfJjjG9cys4hjgHvKOjUKqs3qVltxQrGbnfXm6LoaFcag1SG+ZNmWjmCowezYBL3
	JOu8KQOBgsiD814LYCBUyqxLv7ymqY2u7ySXcg4a9P+lwnwVIRdamcqB1t1E5thVTb5J
	xl7C7eWMIMZovrjPjau2dyN3vkgKkGuazu/FGo+U0+7E4lgJQKWaDRTckQe7NABoiHpk
	FpfaCDAwIWC8zonKnU2Omxz/n+YWv/iNUNMvP5FATrh0g8pjqO39GiKVelZWOcXpVZ0X
	NSsdiD2vjLy6Pi7ljw2uyAOPiDlIXW8vkfFbvLZln9vQb+mAK00d1fhSiBRnaOkRbAIO
	9k1g==
X-Gm-Message-State: ALoCoQn99RcVO65RGBnFC+0TuKqYQffCH5rxFKW8r+UeY4b62GB7EJd427Btw0mTGTMkwm1d55Nq
MIME-Version: 1.0
X-Received: by 10.59.7.102 with SMTP id db6mr8989565ved.17.1396036101724; Fri,
	28 Mar 2014 12:48:21 -0700 (PDT)
Received: by 10.52.173.69 with HTTP; Fri, 28 Mar 2014 12:48:21 -0700 (PDT)
In-Reply-To: <1396031047.14790.24.camel@ted>
References: <1396031047.14790.24.camel@ted>
Date: Fri, 28 Mar 2014 12:48:21 -0700
Message-ID: <CAPhnLPDdg+MsDzodbE+HVq9-NFXFL=egnH+0tNFsrQGgT1Wmqg@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Cc: yocto-builds <yocto-builds@yoctoproject.org>,
	Denys Dmytriyenko <denys@ti.com>, "Hart, Darren" <darren.hart@intel.com>,
	"poky@yoctoproject.org" <poky@yoctoproject.org>,
	"saul.wold" <saul.wold@intel.com>
Subject: Re: meta-yocto-bsp changes and 3.14
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
X-List-Received-Date: Fri, 28 Mar 2014 19:48:25 -0000
Content-Type: text/plain; charset=ISO-8859-1

On Fri, Mar 28, 2014 at 11:24 AM, Richard Purdie
<richard.purdie@linuxfoundation.org> wrote:
> I've merged Bruce's 3.14 patches into master-next. With the yocto-bsp
> parts that I could pull together, there seemed to be some pieces
> missing, specifically:
>
> * the yocto-linux-dev.bbappend was underpopulated
> * the yocto-linux-3.14.bbappend was missing
> * no removal of beagleboard
> * no addition to the README for beaglebone
> * local.conf.sample needs updates
> * missing edgerouter configuration in linux-yocto*
> * should we be removing a mips BSP?
> * need a layer version bump so beth can handle this on the autobuilder
>
> I added commits for some of these, the 3.14 kernel bbappend is missing
> SRCREVs though for example. The state of where I got to is:
>
> http://git.yoctoproject.org/cgit.cgi/meta-yocto/log/?h=master-next
>
> Beth: Your AR is to figure out the autobuilder side of this and build
> the two new replacement BSPs (beaglebone and edgerouter) instead of the
> old ones. When that and the current build on the AB is done, can we run
> a build of master-next please?
>

RP: Ok, I'm testing the changes for this now in dev. I should have
results enough to push into production by the time the current
production build is finished. I'll kick master-next when we're
finished testing in dev.


> Denys: I'm hoping you can help out with the README
>
> Bruce: can you look at the linux-yocto-* changes, particularly the 3.14
> SRCREVs and that linux-yocto-dev looks right?
>
> Cheers,
>
> Richard
>
>



-- 
Elizabeth Flanagan
Yocto Project
Build and Release

