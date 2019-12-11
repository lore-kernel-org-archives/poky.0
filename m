Received: from bsmtp2.bon.at (bsmtp2.bon.at [213.33.87.16])
 by mx.groups.io with SMTP id smtpd.web10.3297.1576069742415549015
 for <poky@lists.yoctoproject.org>;
 Wed, 11 Dec 2019 05:09:03 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: streamunlimited.com, ip: 213.33.87.16, mailfrom: quentin.schulz@streamunlimited.com)
Received: from qschulz (vpn.streamunlimited.com [91.114.0.140])
	by bsmtp2.bon.at (Postfix) with ESMTPSA id 47Xy1R4FCPz5tlF;
	Wed, 11 Dec 2019 14:08:59 +0100 (CET)
Date: Wed, 11 Dec 2019 14:08:58 +0100
From: "Quentin Schulz" <quentin.schulz@streamunlimited.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: poky@lists.yoctoproject.org, andriy.danylovskyy@streamunlimited.com,
	radek.dostal@streamunlimited.com
Subject: Re: [poky] [BUG] icecc breaks gobject-introspection do_compile on 2.7.2 and master
Message-ID: <20191211130858.2atzu2e6fwyxfh2r@qschulz>
References: <20191206101849.hvhc5itxvxfxoap6@qschulz>
 <CAMKF1srL4gGxGx6DtHVN3=6uzn7KEGAQXcyypgw+7R6OZUjgsQ@mail.gmail.com>
 <20191209104222.lddk55rzv6lrwlp4@qschulz>
 <CAMKF1sp+rmXSrNqXD5k0Z1oC8rKtZA5xo9-OmJLYG2sS4SwWEg@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAMKF1sp+rmXSrNqXD5k0Z1oC8rKtZA5xo9-OmJLYG2sS4SwWEg@mail.gmail.com>
User-Agent: NeoMutt/20180716
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Khem,

On Mon, Dec 09, 2019 at 11:02:29AM -0800, Khem Raj wrote:
> /tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/build/g-ir-scanner-qemuwrapper
> /tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/build/tools/g-ir-compiler
> -o gir/cairo-1.0.typelib gir/cairo-1.0.gir --includedir
> /tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/build/gir
> --includedir /tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/gobject-introspection-1.62.0/gir
> 
> 
> try to run above cmd manually with some verbosity
> 

I manually ran this command, the result being:
Error while loading /tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/build/tools/g-ir-compiler: No such file or directory
If the above error message is about missing .so libraries, then setting up GIR_EXTRA_LIBS_PATH in the recipe should help.
(typically like this: GIR_EXTRA_LIBS_PATH="${B}/something/.libs" )
WARNING: exit code 1 from a shell command.

As explained in the original mail (though it was maybe way too long to
read), the file is indeed not there when the recipe is failing and there
when it is successfuly building.

If there is more info to get, could you please point how to make
qemu-wrapper more verbose, I couldn't find anything meaningful with
/tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/build/g-ir-scanner-qemuwrapper -h

-trace and -strace didn't output anything more (though I might be doing
it wrong).

Thanks,
Quentin
