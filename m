Return-Path: <ross.burton@intel.com>
Received: from mail-ve0-f169.google.com (mail-ve0-f169.google.com
	[209.85.128.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ACAE4E00747
	for <poky@yoctoproject.org>; Thu,  5 Sep 2013 08:12:10 -0700 (PDT)
Received: by mail-ve0-f169.google.com with SMTP id db12so619390veb.14
	for <poky@yoctoproject.org>; Thu, 05 Sep 2013 08:12:10 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=Yz77m/zFeWTquKikdeNwOLynh5S1O4cJqE9vrzIUi+I=;
	b=iS3DgsDq4OziJCuxaZ85B8Nne1ShxePO2xtikvWuzk8tCTPLJV94IiFV17sPNSwPBV
	ZN1zzOTO5vWWUzT4xeNzYskdXM+EWT5zPVy0BLV6kFWe30XUW03aRXPm9yk7Mldn8NZj
	i/A/fMDfoZPoU6pNLVa9/H7Kl654b442Sq4N0t3nfrHb2VEQdgc6Pqhg4mLMoRSUmBQl
	tOMSYFH5Jf8px5eCRxA1fDyrx8FshH5y6u2o4aYQsg9OgNv13Xa3lWG59SsiPR21KaKx
	YiYLEeup29v6bXHyaxBaQLlP9GFAX4TS/RR/eJs51RR0qzP/DCUXhecfaNGIVOzmmBO4
	dm6Q==
X-Gm-Message-State: ALoCoQkUwwys4UnGoBNvGg/Au70EOypI+H7159PQ4w9c193Z8S8WUbEGARuizC8hC6B1vRsSuIpe
X-Received: by 10.52.165.131 with SMTP id yy3mr2940280vdb.25.1378393929903;
	Thu, 05 Sep 2013 08:12:09 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.220.71.201 with HTTP; Thu, 5 Sep 2013 08:11:49 -0700 (PDT)
In-Reply-To: <1378392729.14029.73.camel@dvhart-mobl4.amr.corp.intel.com>
References: <cover.1378339881.git.dvhart@linux.intel.com>
	<4562a00806c5a6573b5aa650764ad12bc93edda7.1378339881.git.dvhart@linux.intel.com>
	<CAJTo0LY-oi+tQy7rs84axy4R71Y4j=HtEgXALN20aVdATwzVdg@mail.gmail.com>
	<1378392729.14029.73.camel@dvhart-mobl4.amr.corp.intel.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 5 Sep 2013 16:11:49 +0100
Message-ID: <CAJTo0LZ6FHdDe0NgE0sQvqg+pF4hf_MjvRDe1L=HV-7021EAOg@mail.gmail.com>
To: Darren Hart <dvhart@linux.intel.com>
Cc: yunguo.wei@windriver.com, Poky <poky@yoctoproject.org>,
	OE-core <openembedded-core@lists.openembedded.org>
Subject: Re: [PATCH 3/4] xf86-video-mga: Pull in Matrox MGA support from meta-intel
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
X-List-Received-Date: Thu, 05 Sep 2013 15:12:13 -0000
Content-Type: text/plain; charset=UTF-8

On 5 September 2013 15:52, Darren Hart <dvhart@linux.intel.com> wrote:
>> Assuming success in an distro where opengl isn't enabled will result
>> in the driver believing that DRI is enabled when it isn't, so expect
>> to see build failures from this.
>
> Should we be adding a distro depends on opengl for this driver as is
> being done for others currently?

No, because DRI is optional in this driver.  Follow opengl and flip
--enable/disable-dri.

(assuming I don't change the server to always build DRI)

Ross

