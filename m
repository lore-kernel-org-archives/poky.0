Return-Path: <mark.hatle@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 19CE74C80578
	for <poky@yoctoproject.org>; Thu, 28 Apr 2011 17:08:23 -0500 (CDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p3SM8MCK010052
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <poky@yoctoproject.org>; Thu, 28 Apr 2011 15:08:22 -0700 (PDT)
Received: from Macintosh-5.local (172.25.36.228) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.1.255.0;
	Thu, 28 Apr 2011 15:08:22 -0700
Message-ID: <4DB9E555.905@windriver.com>
Date: Thu, 28 Apr 2011 17:08:21 -0500
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
User-Agent: Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US;
	rv:1.9.2.15) Gecko/20110303 Thunderbird/3.1.9
MIME-Version: 1.0
To: <poky@yoctoproject.org>
References: <C10D3FB0CD45994C8A51FEC1227CE22F2311C1C837@shsmsx502.ccr.corp.intel.com>	<20110428092232.GA3259@jama.jama.net>
	<4DB9859D.7070609@windriver.com>	<1304024672.2171.396.camel@vorpal>
	<4DB9DADA.1020304@windriver.com>
	<BANLkTimxB2LuGWGtjyBKQgFTkKqb5p3YfA@mail.gmail.com>
In-Reply-To: <BANLkTimxB2LuGWGtjyBKQgFTkKqb5p3YfA@mail.gmail.com>
Subject: Re: [OE-core] RFC: design of network based PR service
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
X-List-Received-Date: Thu, 28 Apr 2011 22:08:23 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On 4/28/11 5:02 PM, Chris Larson wrote:
> On Thu, Apr 28, 2011 at 2:23 PM, Mark Hatle <mark.hatle@windriver.com> wrote:
>> Checksums and timestamps are not enough to determine a logical progression of
>> the components.
>>
>> We need something that informs the user where these changes fit in the grand
>> scheme of things.  Are they newer or older then a recipe of the same name (and
>> package version)?
> 
> I think we might want to stop using the term PR to describe what
> you're talking about here.  PR has historically had a quite specific
> meaning to us, given how bitbake has operated, and how stamps worked.
> It sounds like you want to formalize what we've likely all been doing
> manually -- PR .= ".1" or whatever in the .bbappend of a given layer.
> Do you think we really need a format string for this, or would
> introducing a new variable that's simply a list of extra version
> components, and which is used by the packaging classes, likely not by
> bitbake itself, get the job done? Am I grasping your need correctly?

I would like a format string so that for my products I can choose to do
arbitrary revision's in packages based on the data present in the recipes (and
elsewhere)..

But the way I see this, you are correct.  This is an effort to help automate the
PR .= ".1" and similar, but based on checksums and system configurations changes....

To me, "PR" stays as it is used (mostly) today.  As a way to indicate revisions
of a particular recipe...  The other changes can optionally site on top of that
based on the format string that the packaging back ends will adopt.  (We can
even make the default that the packaging revision = PR as the default string.)

--Mark

