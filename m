Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by mx1.pokylinux.org (Postfix) with ESMTP id 4B8A54C80048
	for <poky@lists.pokylinux.org>; Wed, 15 Dec 2010 11:33:26 -0600 (CST)
Received: by mail.chez-thomas.org (Postfix, from userid 999)
	id B1D7E16602EC; Wed, 15 Dec 2010 10:33:25 -0700 (MST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.1
Received: from hermes.chez-thomas.org (hermes_local [192.168.1.101])
	by mail.chez-thomas.org (Postfix) with ESMTP id AB23C16602C5;
	Wed, 15 Dec 2010 10:33:23 -0700 (MST)
Message-ID: <4D08FBE3.9020904@mlbassoc.com>
Date: Wed, 15 Dec 2010 10:33:23 -0700
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.13) Gecko/20101209 Fedora/3.1.7-0.35.b3pre.fc13
	Thunderbird/3.1.7
MIME-Version: 1.0
To: Poky <poky@lists.pokylinux.org>
Subject: Extending recipes
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
X-List-Received-Date: Wed, 15 Dec 2010 17:33:26 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

I have a number of recipes that are in the Poky core that
need a little extending for my environment.  Mostly, this
can be done with a .bbappend file, but some are a bit trickier.

For example, in meta/recipes-multimedia/gstreamer/gst-plugins-ugly_0.10.16.bb
there are a couple of lines which control how this package is
configured and built.  In particular:
   DEPENDS += "gst-plugins-base libid3tag libmad mpeg2dec liba52 lame"
   EXTRA_OECONF += "--with-plugins=a52dec,lame,id3tag,mad,mpeg2dec,mpegstream,mpegaudioparse,asfdemux,realmedia"
In my case, I want to have the h264 encoder/decoder built as well.
I don't see a [good?] way to change these lines to be effectively:
   DEPENDS += "gst-plugins-base libid3tag libmad mpeg2dec liba52 lame x264"
   EXTRA_OECONF += "--with-plugins=a52dec,lame,id3tag,mad,mpeg2dec,mpegstream,mpegaudioparse,asfdemux,realmedia,x264"

The DEPENDS variable is easy enough to extend in .bbappend,
but how should I handle EXTRA_OECONF?

Thanks for any ideas

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

