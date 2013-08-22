Return-Path: <ross.burton@intel.com>
Received: from mail-vb0-f47.google.com (mail-vb0-f47.google.com
	[209.85.212.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E57CEE00747
	for <poky@yoctoproject.org>; Thu, 22 Aug 2013 11:21:31 -0700 (PDT)
Received: by mail-vb0-f47.google.com with SMTP id h10so1526524vbh.6
	for <poky@yoctoproject.org>; Thu, 22 Aug 2013 11:21:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=r1uXGq7QT46sqT5XB+RAwfrO5PEsI/CMMwdaIa6SWNo=;
	b=MNtdb4QWQjZ1XqTZWN6/zICYNDvUOUDtDED+RDqs1ASkA0N7vRpQvEyfAOhm+5Ps/B
	Hg3eC9iE0BrzOCmxh1r6DXB+emErRxAwiMDMd+dO28zKF1ieQ11zslWDsi741I7beXkX
	/oZNEO0Y7cGOaeFhye38qtZqUeVB/jPLujgt710buCPLa8fdojCG1svUoQy14/1DDxGS
	ojYEY2/cBSuifpMSFpskm5G6Nz5Ad2+h8MrfXnPNlkHEIBYxa7i1NUyej5jOHLrimvla
	hCENEZLBR3HehQSPSpbBjYeH7Mhqe8qaB0SNTwI2wqG4hYbAAn0fB6O7JEjdONvUC/pO
	bezQ==
X-Gm-Message-State: ALoCoQk2tM64A0Lg1HpYc2Ui/mJ+goxaKT8SVCMzuaArC/dQuSjQVl9NqjOaXyJa8zdfC5ucaRit
X-Received: by 10.52.120.78 with SMTP id la14mr4064430vdb.9.1377195690779;
	Thu, 22 Aug 2013 11:21:30 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.220.71.201 with HTTP; Thu, 22 Aug 2013 11:21:10 -0700 (PDT)
In-Reply-To: <1377193460.5259.17.camel@dvhart-mobl4.amr.corp.intel.com>
References: <2eacc0a56e45f8210ff25844cee1fd31014cbb64.1377186905.git.ross.burton@intel.com>
	<c6e699b18e2e78f9e44de5c49482afe0d46f8f95.1377186905.git.ross.burton@intel.com>
	<1377193460.5259.17.camel@dvhart-mobl4.amr.corp.intel.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 22 Aug 2013 19:21:10 +0100
Message-ID: <CAJTo0LZ0_YEGW_Qz-sab=su2vu2wEB4Z6y6+MjjuC6u5eeKdxg@mail.gmail.com>
To: Darren Hart <dvhart@linux.intel.com>
Cc: Poky Project <poky@yoctoproject.org>
Subject: Re: [PATCH 2/4] genericx86: add v86d to machine recommends for uvesafb
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
X-List-Received-Date: Thu, 22 Aug 2013 18:21:33 -0000
Content-Type: text/plain; charset=UTF-8

On 22 August 2013 18:44, Darren Hart <dvhart@linux.intel.com> wrote:
> This is added to MACHINE_ESSENTIAL_EXTRA_RDEPENDS for qemux86.
>
> MACHINE_EXTRA_RRECOMMENDS does not impact packagegroup-core-boot, and
> therefor not core-image-minimal. Perhaps that is the intention?

It's not essential, no v86d means no uvesafb driver which isn't the
end of the world, and possibly what you want for a minimal image.

Ross

