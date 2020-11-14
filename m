Received: from mail-ot1-f67.google.com (mail-ot1-f67.google.com [209.85.210.67])
 by mx.groups.io with SMTP id smtpd.web09.12641.1605392651484242905
 for <poky@lists.yoctoproject.org>;
 Sat, 14 Nov 2020 14:24:11 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@konsulko.com header.s=google header.b=lynQIw5R;
 spf=pass (domain: konsulko.com, ip: 209.85.210.67, mailfrom: paul.barker@konsulko.com)
Received: by mail-ot1-f67.google.com with SMTP id k3so12251388otp.12
        for <poky@lists.yoctoproject.org>; Sat, 14 Nov 2020 14:24:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=konsulko.com; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=71e/CqT17sP1tai5xSaDqRbsKJmNMEuuJ4cBqP7HC2o=;
        b=lynQIw5RvIFv9qzPcKXWbtWL08z+PrZscJMsANg+hBjlMOIFZt3uQ836G/Wmp6cPr7
         TCw7k+BD0h1PxZzYdgriLcrUyJFYGYjKHOz/O2zaP6qdHXktFwlYt3NcurseWq+DPf2P
         XBMkmoppi63uIJrH68wFTDcNlehiSiH6fSkr0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=71e/CqT17sP1tai5xSaDqRbsKJmNMEuuJ4cBqP7HC2o=;
        b=BwM8aIX61FjTtFnzBhGDQrRQbTDzgsK5eopj8LgfBVmQAVU14VsjlcZblswDfvFBPj
         SrJ9IIQatJxuvtszUfVkMDHpOWrJmlYH7LlkCLWbZGqz0dxTjRysmEuDsXOYaccFFELE
         h/09LEGHGfDCL/5MAPx19tPjVfYz5Suj+riWhrMk82IHmEPedVlmU5D10y9HIEsncxVV
         3oCSN+ZDazzlodhXNEfv7lMPLDTot202hg13vK/f83GopD3abxyP/mTLMcLCxnszrIyi
         o/hHAkH0B2eOCeHmag0T3r1ZqQ9FVkzt6Kzykr3ZsVZlXV5+/HRmZmnpWZrt0kEIojvg
         eeOA==
X-Gm-Message-State: AOAM532s06bL2AMtz7+X22nXW7d8d0eCWTn8ZYG2VDoRJVRsbbVnkUMi
	R6beWXHE1C5mOVeLCVqhmX8fAkxl3p6VQZkiUxmNew==
X-Google-Smtp-Source: ABdhPJwgR1+GhEUqJPQncZhsqlSdz3f/JzNzeej/i81g66Y9ZzqsNTE0Awa6Z/5x8a4+Rqi9xDdnRfCByVXkzNTbY4A=
X-Received: by 2002:a05:6830:1b66:: with SMTP id d6mr6251537ote.258.1605392650786;
 Sat, 14 Nov 2020 14:24:10 -0800 (PST)
MIME-Version: 1.0
References: <20201113221425.5106-1-okaya@kernel.org> <CAM9ZRVu0EXaTc08zpEH9rORenatkBGgPmfSL4jmu9QPwF21F9g@mail.gmail.com>
 <09447f4d-e49f-88b7-0d53-7f4eb9773e2f@kernel.org>
In-Reply-To: <09447f4d-e49f-88b7-0d53-7f4eb9773e2f@kernel.org>
From: "Paul Barker" <pbarker@konsulko.com>
Date: Sat, 14 Nov 2020 22:24:00 +0000
Message-ID: <CAM9ZRVtL0SHSnQcUfv5iXZTA7oTsMffQJJQ2eYtnJtPDuPsMfQ@mail.gmail.com>
Subject: Re: [poky] [PATCH v6] poky-tiny: enable section removal
To: Sinan Kaya <okaya@kernel.org>, Khem Raj <raj.khem@gmail.com>
Cc: poky@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"

On Sat, 14 Nov 2020 at 20:53, Sinan Kaya <okaya@kernel.org> wrote:
>
> On 11/14/2020 3:23 PM, Paul Barker wrote:
> > On Fri, 13 Nov 2020 at 22:14, Sinan Kaya <okaya@kernel.org> wrote:
> >>
> >> Use GCC sections flags so that unused sections can be garbage
> >> collected at link time.
> >>
> >> Signed-off-by: Sinan Kaya <okaya@kernel.org>
> >> ---
> >>  meta-poky/conf/distro/include/gcsections.inc | 19 +++++++++++++++++++
> >>  meta-poky/conf/distro/poky-tiny.conf         |  3 +++
> >>  2 files changed, 22 insertions(+)
> >>  create mode 100644 meta-poky/conf/distro/include/gcsections.inc
> >>
> >> diff --git a/meta-poky/conf/distro/include/gcsections.inc b/meta-poky/conf/distro/include/gcsections.inc
> >> new file mode 100644
> >> index 00000000000..d94f25913bb
> >> --- /dev/null
> >> +++ b/meta-poky/conf/distro/include/gcsections.inc
> >> @@ -0,0 +1,19 @@
> >> +CFLAGS_SECTION_REMOVAL = "-ffunction-sections -fdata-sections"
> >> +LDFLAGS_SECTION_REMOVAL = "-Wl,--gc-sections"
> >> +
> >> +# packages with build problems using sections
> >> +CFLAGS_SECTION_REMOVAL_pn-glibc = ""
> >> +LDFLAGS_SECTION_REMOVAL_pn-glibc = ""
> >> +CFLAGS_section_removal_pn-cairo = ""
> >> +LDFLAGS_section_removal_pn-cairo = ""
> >> +CFLAGS_section_removal_pn-perl = ""
> >> +LDFLAGS_section_removal_pn-perl = ""
> >
> > Are you sure "section_removal" should be lower case here?
> >
>
> Copy/paste screw up.
>
> >> +
> >> +# omit section removal on native builds
> >> +CFLAGS_SECTION_REMOVAL_class-native = ""
> >> +LDFLAGS_SECTION_REMOVAL_class-native = ""
> >
> > This still applies the flags to -nativesdk builds, possibly to other
> > builds as well. Instead you should only append the flags for
> > class-target.
> >
>
> This was my original version. Khem wanted to increase the scope to
> nativesdk too. I'll go back to class-target.

If that's the case I advise explicitly listing the classes you do want
the flags to apply to (_class-target & _class-nativesdk) instead of
listing the classes to exclude. That would avoid the risk of applying
flags to other classes which haven't been considered.

Khem: Any thoughts here?

-- 
Paul Barker
Konsulko Group
