Received: from bsmtp.bon.at (bsmtp.bon.at [213.33.87.14])
 by mx.groups.io with SMTP id smtpd.web10.4222.1592388373696435123
 for <poky@lists.yoctoproject.org>;
 Wed, 17 Jun 2020 03:06:14 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: streamunlimited.com, ip: 213.33.87.14, mailfrom: quentin.schulz@streamunlimited.com)
Received: from qschulz (vpn.streamunlimited.com [91.114.0.140])
	by bsmtp.bon.at (Postfix) with ESMTPSA id 49n11F5FCzz5tlG;
	Wed, 17 Jun 2020 12:06:09 +0200 (CEST)
Date: Wed, 17 Jun 2020 12:06:08 +0200
From: "Quentin Schulz" <quentin.schulz@streamunlimited.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: poky@lists.yoctoproject.org, andriy.danylovskyy@streamunlimited.com,
	radek.dostal@streamunlimited.com, alex.kanavin@gmail.com,
	richard.purdie@linuxfoundation.org
Subject: [FIXED] Re: [poky] [BUG] icecc breaks gobject-introspection do_compile on 2.7.2 and master
Message-ID: <20200617100608.n5d7a4ptal2uojod@qschulz>
References: <20191206101849.hvhc5itxvxfxoap6@qschulz>
 <CAMKF1srL4gGxGx6DtHVN3=6uzn7KEGAQXcyypgw+7R6OZUjgsQ@mail.gmail.com>
 <20191209104222.lddk55rzv6lrwlp4@qschulz>
 <CAMKF1sp+rmXSrNqXD5k0Z1oC8rKtZA5xo9-OmJLYG2sS4SwWEg@mail.gmail.com>
 <16194A529E0C724A.27738@lists.yoctoproject.org>
MIME-Version: 1.0
In-Reply-To: <16194A529E0C724A.27738@lists.yoctoproject.org>
User-Agent: NeoMutt/20180716
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, Jun 17, 2020 at 11:20:56AM +0200, Quentin Schulz wrote:
> Hi all,
> 
> Reviving the thread as I see Alex talking to Richard about a g-i build
> issue that is a build race due to missing dependency.
> 
> This very much looks like gobject-introspection being talked about and I
> also have this missing dependency issue.
> 
> I haven't written a proper log and I'm definitely not fluent in meson
> but the attached diff fixed my issue (I have the commit log sort of
> ready but on my home desktop, anyway).
> 
> Hope this helps. I'll send the logic behind late(r) this day if need be.
> 

FYI for anyone reading this mail and having the same issue, the fix is
in master gobject-introspection already and I expect it'll make its way to
YP master rather soon.

https://gitlab.gnome.org/GNOME/gobject-introspection/-/commit/56ba5656258b82dbc069ab3a61e597c931a16a83

@Alex, thanks a ton for taking care of sending the patch upstream.

Quentin
