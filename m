Received: from sender4-op-o13.zoho.com (sender4-op-o13.zoho.com [136.143.188.13])
 by mx.groups.io with SMTP id smtpd.web08.6704.1624537300278072833
 for <poky@lists.yoctoproject.org>;
 Thu, 24 Jun 2021 05:21:41 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=dwrobel@ertelnet.rybnik.pl header.s=ertelnet header.b=Xlb0sMjr;
 spf=pass (domain: ertelnet.rybnik.pl, ip: 136.143.188.13, mailfrom: dwrobel@ertelnet.rybnik.pl)
ARC-Seal: i=1; a=rsa-sha256; t=1624537292; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=GFtBTx8xmoAjNjtRxuvq07PQ5TYqSFuHWppzjXE5RwcHVqHXnKIIdY57807uSLbq4/ReSzklDm9e1OOzLVR6NAepRA7kVjRW8jt6XQFHPzhtCnuh3v1ZpzlWE2ncgbEHCoCZCfJMP8cL9hiAFqfQAV78HyH1niZ0JHc3Ik53JvA=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1624537292; h=Content-Type:Content-Transfer-Encoding:Cc:Date:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:To; 
	bh=L3985aJqYAgZcSD9J3sszLgUFFazgXszDm7dwrLVoeU=; 
	b=JxBHhseyFPcDU3YDzZ4KTzY1bAF4uu0BiIAE23muJs7bw/c8oHtnweBvDb+YJGvDwH+nqX9VlzGozispKqXJ7orsSJqt8In37EK7Z4AXUCxPkSBqpp4O4lASHHXC7sEp4tK+rrLxZDRs7vdF46u77/iSdKIjMkpHv09yDeatPy8=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=ertelnet.rybnik.pl;
	spf=pass  smtp.mailfrom=dwrobel@ertelnet.rybnik.pl;
	dmarc=pass header.from=<dwrobel@ertelnet.rybnik.pl>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1624537292;
	s=ertelnet; d=ertelnet.rybnik.pl; i=dwrobel@ertelnet.rybnik.pl;
	h=Date:From:To:Cc:Message-ID:In-Reply-To:References:Subject:MIME-Version:Content-Type:Content-Transfer-Encoding;
	bh=L3985aJqYAgZcSD9J3sszLgUFFazgXszDm7dwrLVoeU=;
	b=Xlb0sMjros/aIabAl1bzo1X8ex/5ofNd4voiH6U9z3wCkxpdFMiE7Alf6/0OXnHM
	UKydVQUPnlhNAWfinnmbuFvx37GVwxVHFWHPXLiOl+GUpK8ccvfukpyK91YWeUkXaBT
	mo9ct99HPEr4wa1emQbLZaeFM2+JRs1JO8TVuHSE=
Received: from mail.zoho.com by mx.zohomail.com
	with SMTP id 1624537290059644.5442291402837; Thu, 24 Jun 2021 05:21:30 -0700 (PDT)
Date: Thu, 24 Jun 2021 14:21:30 +0200
From: "Damian Wrobel" <dwrobel@ertelnet.rybnik.pl>
To: "Richard Purdie" <richard.purdie@linuxfoundation.org>
Cc: "poky" <poky@lists.yoctoproject.org>
Message-ID: <17a3df7d534.c0b92256242247.1706902192878605145@ertelnet.rybnik.pl>
In-Reply-To: <f7948e22e865aa4101b80042ac12bc5b10764820.camel@linuxfoundation.org>
References: <20210624064025.102654-1-dwrobel@ertelnet.rybnik.pl>
	 <146244a25957547cd9adf7e87025572c1341e6fb.camel@linuxfoundation.org>
	 <17a3d3d8b35.e5a076c8208632.8225141840876948326@ertelnet.rybnik.pl> <f7948e22e865aa4101b80042ac12bc5b10764820.camel@linuxfoundation.org>
Subject: Re: [poky] [PATCH] bitbake: Fix automatic generation of variable dependencies
MIME-Version: 1.0
Importance: Medium
User-Agent: Zoho Mail
X-Mailer: Zoho Mail
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit




 ---- On Thu, 24 Jun 2021 11:52:43 +0200 Richard Purdie <richard.purdie@linuxfoundation.org> wrote ----
 > On Thu, 2021-06-24 at 10:58 +0200, Damian Wrobel wrote:
 > > 
 > > 
 > >  ---- On Thu, 24 Jun 2021 09:21:38 +0200 Richard Purdie <richard.purdie@linuxfoundation.org> wrote ----
 > >  > On Thu, 2021-06-24 at 08:40 +0200, Damian Wrobel wrote:
 > >  > > Automatically generate variable dependencies also for:
 > >  > >     - "bb.utils.contains",
 > >  > >     - "base_contains"
 > >  > >     - "bb.utils.contains_any",
 > >  > >     - "bb.utils.filter".
 > >  > > 
 > >  > > This is to avoid situation in which some of the variables were
 > >  > > added automatically but not all of them like in the test example below:
 > >  > > 
 > >  > > RDEPENDS_${PN} += "\
 > >  > >     ${@bb.utils.contains(                                              \
 > >  > >         'BB_UTILS_CONTAINS_DROPBEAR',  '1',   'dropbear',   '', d)}    \
 > >  > >     ${@bb.utils.contains_any(                                          \
 > >  > >         'BB_UTILS_CONTAINS_ANY_EXPAT', ['1'], 'expat',      '', d)}    \
 > >  > >     ${@oe.utils.conditional(                                           \
 > >  > >         'OE_UTILS_CONDITIONAL_ZLIB',   '1',   'zlib',       '', d)}    \
 > >  > >     ${@bb.utils.filter('BB_UTILS_FILTER_WAYLAND_PROTOCOLS', 'xyz', d)} \
 > >  > > 
 > >  > 
 > >  > This doesn't look quite right. Contains is given special handling
 > >  > which you see in the code below with "self.contains[varname].add(node.args[1].s)".
 > >  > 
 > >  > This means that the hash can reflect whether the variable contains the
 > >  > value or not instead of depending on the complete value. This means
 > >  > the hashes are optimised to a binary decision rather than varying 
 > >  > arbitrary values.
 > >  > 
 > >  > Can you describe more about the issue you're seeing?
 > >  > 
 > > 
 > > When I added above RDEPENDS_${PN} example to e.g. dash recipe and built it then I would
 > > expect that all of those variables should be visible in the output of:
 > > 
 > > $ bitbake-dumpsig -t dash do_package | grep 'RDEPENDS_dash is'
 > 
 > You'll see it actually says:
 > 
 > Variable RDEPENDS_dash value is       ${@bb.utils.contains(
 >                                                        'BB_UTILS_CONTAINS_DROPBEAR',  '1',   'dropbear',   '', d)}
 >          ${@bb.utils.contains_any(
 >                                                    'BB_UTILS_CONTAINS_ANY_EXPAT', ['1'], 'expat',      '', d)}
 >          ${@oe.utils.conditional(
 >                                                     'OE_UTILS_CONDITIONAL_ZLIB',   '1',   'zlib',       '', d)}
 >          ${@bb.utils.filter('BB_UTILS_FILTER_WAYLAND_PROTOCOLS', 'xyz', d)}
 > BB_UTILS_CONTAINS_DROPBEAR{1} = Unset
 > BB_UTILS_FILTER_WAYLAND_PROTOCOLS{xyz} = Unset
 > 
 > so the lines after the variable show that it is looking at whether those variables 
 > contain those values. In my case they don't and are unset.

However, I don't see in your output the list of dependencies of the "RDEPENDS_dash" variable
(something like: "List of dependencies for variable RDEPENDS_dash is ...").
Based on my observation, if there are no dependent variables then changing values of these which we expect will not trigger "dash" to rebuild.

In other words, if all of the variables which are used in evaluation of the RDEPENDS_dash variable are not added (unconditionally) as its dependency then
one can observe differences between builds made with and without sstate-cache.

 > 
 > > That wasn't the case before this change. Now if I run it I have:
 > > 
 > > $ bitbake-dumpsig -t dash do_package | grep 'RDEPENDS_dash is' 
 > > List of dependencies for variable RDEPENDS_dash is {'BB_UTILS_CONTAINS_DROPBEAR', 'BB_UTILS_FILTER_WAYLAND_PROTOCOLS', 'OE_UTILS_CONDITIONAL_ZLIB', 'BB_UTILS_CONTAINS_ANY_EXPAT'}
 > > 
 > > The observation is that if they're not added as a dependency then changing them 
 > > didn't trigger dash rebuilt all the time.
 > 
 > They'd only trigger a rebuild if the value of interest was added or removed.

By saying "value of interest" you mean:
 - addition/removal of e.g. BB_UTILS_FILTER_WAYLAND_PROTOCOLS,
or
 - the value assigned to BB_UTILS_FILTER_WAYLAND_PROTOCOLS?

--
Regards,
Damian

 > 
 > > In practice this generates difficult to debug situations as build which used 
 > > sstate-cache behaves completely differently then the one made from scratch.
 > 
 > It shouldn't, at least not due to this particular change. There may be some other
 > issue such as the contains_any() or filter() usage.
 > 
 > Cheers,
 > 
 > Richard
 > 
 > 
