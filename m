Return-Path: <josh@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 16F30E006B4
	for <poky@yoctoproject.org>; Tue,  4 Oct 2011 08:35:35 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga101.ch.intel.com with ESMTP; 04 Oct 2011 08:35:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.68,485,1312182000"; d="scan'208";a="23154932"
Received: from unknown (HELO [10.255.14.210]) ([10.255.14.210])
	by AZSMGA002.ch.intel.com with ESMTP; 04 Oct 2011 08:35:35 -0700
From: Joshua Lock <josh@linux.intel.com>
To: poky@yoctoproject.org
Date: Tue, 04 Oct 2011 08:35:29 -0700
In-Reply-To: <CAFt-cowut0x80hGjRK3tRxzRygsurb0pHmNR=WHARoLvv16P7w@mail.gmail.com>
References: <1317650263.70639.YahooMailNeo@web94705.mail.in2.yahoo.com>
	<1317650995.67125.YahooMailNeo@web94712.mail.in2.yahoo.com>
	<CAFt-cowut0x80hGjRK3tRxzRygsurb0pHmNR=WHARoLvv16P7w@mail.gmail.com>
X-Mailer: Evolution 3.0.3 (3.0.3-1.fc15) 
Message-ID: <1317742535.2229.9.camel@scimitar>
Mime-Version: 1.0
Subject: Re: : XBMC error (libsdl-mixer_1.2.11.bb & libsdl-image_1.2.10.bb failed)
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
X-List-Received-Date: Tue, 04 Oct 2011 15:35:36 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Mon, 2011-10-03 at 19:41 +0530, v sailaja wrote:
> 
> 
> 
> Hi,
> I'm trying to pull the package XBMC 10.05 which depends on
> libsdl-mixer and libsdl-image and these are there in the

Any reason you're sending a new message rather than replying to the
thread I've already tried to help you in?

Are you able to share the recipe you're pulling so that people can try
and help you?

Where are you 'pulling' this from?

The compilation error you've pasted tells you what's wrong, the paths to
the libtool archives seem to have your sysroot destdir in twice!

/home/sct/logi/gigabyte/poky_gigabyte_16Sep2011/build/tmp/sysroots/fishriver/home/sct/logi/gigabyte/poky_gigabyte_16Sep2011/build/tmp/work/atom-poky-linux/jpeg-6b-r0/image/usr/lib/libjpeg.la:

Please continue this discussion in reply to this message, please don't
start yet another new thread.

Regards,
Joshua

-- 
Joshua Lock
        Yocto Project "Johannes factotum"
        Intel Open Source Technology Centre


