Received: from mail-wr1-f67.google.com (mail-wr1-f67.google.com [209.85.221.67])
 by mx.groups.io with SMTP id smtpd.web11.11351.1589977174685280997
 for <poky@lists.yoctoproject.org>;
 Wed, 20 May 2020 05:19:35 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=PwuAwX4s;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.67, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f67.google.com with SMTP id j5so2949745wrq.2
        for <poky@lists.yoctoproject.org>; Wed, 20 May 2020 05:19:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:date:in-reply-to:references:user-agent
         :mime-version:content-transfer-encoding;
        bh=YrjNAC9vGnJlKsl/OWSWyL1bkcqq/7s+BhqogCJqzrM=;
        b=PwuAwX4sKSGUYBkinNS7xq2gxj0tGnRrRYRgVFDkXAy/OFa38suhkQ2KdqmoiNcKIr
         5AC8+ZLcUU5aO2BWn36PiTo5DZZPFSG2f8BeGaDGRsK8HSUYizF1h48+67al536J8ytV
         4fhE3B0kJFd3L5bIJPxL36do3A+EhwBb5CL7w=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=YrjNAC9vGnJlKsl/OWSWyL1bkcqq/7s+BhqogCJqzrM=;
        b=E0CGn6HH8DGNsiPfkHaac6uK0sDLULHkIiP6j0eA9T7jMZhO0mDAJHsQjItOXVOr66
         a7v9Do8OI+Bn/+tbC3XH0pmjHIE10yInjM27tSdaoRxLPDF5UM+ARCLo/k8H+n6fEm0s
         OiSQ16vBWMD6TfVaPDYmF+faEAJ6YsZu6UPIKhNexsVhrqXd81AFtsoPnQGZ8gHDyQeh
         WOEql73BlJnYgcsUwHbmAQqtAwP8RzuaAEKng5Mj+9soB7kfk6OENFVFs8XJgsklW5BO
         PqBWaEekvP9PWZgHwzZDyMPnwOFx05upiDF8o47IO3i/cS+9kRFizpL3qynWvFRvIm0S
         NOiw==
X-Gm-Message-State: AOAM5301IlDub/Yad6Ml0x0MU2jgx/kNDo96jlRFeXxQRrmK6gfhwhfD
	xEAC9PyelnxyXFpMHYvXGSFZYA==
X-Google-Smtp-Source: ABdhPJwFxtfG+UB4JRiZ+Nws78+OfVssFmuaCHKZiH/MEjxQmQxegi3QN6DfLDgZAvJreqwm+pa14g==
X-Received: by 2002:adf:e951:: with SMTP id m17mr4030052wrn.352.1589977173110;
        Wed, 20 May 2020 05:19:33 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from hex (5751f4a1.skybroadband.com. [87.81.244.161])
        by smtp.gmail.com with ESMTPSA id m7sm2888399wmc.40.2020.05.20.05.19.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 May 2020 05:19:32 -0700 (PDT)
Message-ID: <a58229a9d18b3142f5195aea982d806126fc8224.camel@linuxfoundation.org>
Subject: Re: [poky] Problem building meta-mono gtk-sharp with dunfell release
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: Alex J Lennon <ajlennon@dynamicdevices.co.uk>, 
	poky@lists.yoctoproject.org
Date: Wed, 20 May 2020 13:19:31 +0100
In-Reply-To: <f5a8b269-6bb8-12de-995a-b3f130852d63@dynamicdevices.co.uk>
References: <Tkjn.1589910615239216242.Ajap@lists.yoctoproject.org>
	 <38fe9dc192f312a12b73323581383c9ed5842f06.camel@linuxfoundation.org>
	 <f5a8b269-6bb8-12de-995a-b3f130852d63@dynamicdevices.co.uk>
User-Agent: Evolution 3.36.1-2 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2020-05-20 at 13:10 +0100, Alex J Lennon wrote:
> On 19/05/2020 22:05, Richard Purdie wrote:
> > On Tue, 2020-05-19 at 10:50 -0700, Alex J Lennon wrote:
> > > Hi,
> > > 
> > > I've run into a problem with my CI building meta-mono gtk-sharp
> > > recipe with dunfell and I wonder if anybody can advise?
> > > 
> > > > File: '/data_drive/git/monotest/poky/meta/lib/oe/sstatesig.py',
> > > > lineno: 548, function: process
> > > >       0544:                    add_perm(stat.S_IXOTH, 'x')
> > > >       0545:
> > > >       0546:                if include_owners:
> > > >       0547:                    try:
> > > >   *** 0548:                        update_hash(" %10s" %
> > > > pwd.getpwuid(s.st_uid).pw_name)
> > > >       0549:                        update_hash(" %10s" %
> > > > grp.getgrgid(s.st_gid).gr_name)
> > > >       0550:                    except KeyError:
> > > >       0551:                        bb.warn("KeyError in %s" %
> > > > path)
> > > >       0552:                        raise
> > > > Exception: KeyError: 'getpwuid(): uid not found: 1000'
> > > >   
> > >   Full log is here
> > It means the ownership of files in the output of that recipe is
> > questionable. Adding some "chown root.root ${D}/XXX" would probably
> > fix
> > it.
> > 
> Thanks Richard! I went down this line:
> 
> addtask do_file_ownership after do_install before do_package
> 
> do_file_ownership() {
>    chown root.root ${D}${libdir}/mono/${PN}-2.0/*.dll
> }
> 
> I'm getting an error that I can't change ownership

That is because its not running under pseudo.

do_file_ownership[fakeroot] = "1"

should fix that.

Cheers,

Richard


