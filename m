Return-Path: <rpurdie@linux.intel.com>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id A79284C81234
	for <poky@yoctoproject.org>; Thu,  9 Dec 2010 05:24:26 -0600 (CST)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id oB9BOMUx005953;
	Thu, 9 Dec 2010 11:24:22 GMT
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 05798-02; Thu,  9 Dec 2010 11:24:18 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id oB9BOGmh005946
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Thu, 9 Dec 2010 11:24:17 GMT
From: Richard Purdie <rpurdie@linux.intel.com>
To: "Xu, Dongxiao" <dongxiao.xu@intel.com>, Chris Larson <clarson@kergoth.com>
In-Reply-To: <D5AB6E638E5A3E4B8F4406B113A5A19A314F3004@shsmsx501.ccr.corp.intel.com>
References: <D5AB6E638E5A3E4B8F4406B113A5A19A303B2EF0@shsmsx501.ccr.corp.intel.com>
	<1291804222.1554.256.camel@rex>
	<625BA99ED14B2D499DC4E29D8138F1504D515D0DC5@shsmsx502.ccr.corp.intel.com>
	<D5AB6E638E5A3E4B8F4406B113A5A19A314F2BAE@shsmsx501.ccr.corp.intel.com>
	<1291819067.1554.606.camel@rex>
	<D5AB6E638E5A3E4B8F4406B113A5A19A314F2E1C@shsmsx501.ccr.corp.intel.com>
	<625BA99ED14B2D499DC4E29D8138F1504D515D10E7@shsmsx502.ccr.corp.intel.com>
	<D5AB6E638E5A3E4B8F4406B113A5A19A314F3004@shsmsx501.ccr.corp.intel.com>
Date: Thu, 09 Dec 2010 11:24:06 +0000
Message-ID: <1291893846.1554.793.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: About the operator "??="
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
X-List-Received-Date: Thu, 09 Dec 2010 11:24:27 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Thu, 2010-12-09 at 15:59 +0800, Xu, Dongxiao wrote:
> Tian, Kevin wrote:
> >> From: Xu, Dongxiao
> >> Sent: Thursday, December 09, 2010 11:33 AM
> >> During the file parsing process, the getVar is called
> >> "1435156/1148654" 
> >> times (actually I am still confused what "/" means...), and among
> >> them, 322121 times of getVar call return "None", thus about 1/3 or
> >> 1/4 of the total calls. 

Ok, that is a pretty significant portion of the time.

> >> I tried to use the following patch to have a test. Also I paste a
> >> profile log. 
> >> From the result we can see it has over 15% performance gain. (from
> >> 39.3 
> >> secs to 33.7 secs).

So despite that, it still significantly helps performance. Could you
also give some raw performance numbers? By this I mean make the timing
runs with profiling turned off so work out the time it takes before and
after the patch with the profiling off so the numbers are "real" with
"time bitbake xxx"?

It always pays just to sanity check and this gives the "real"
performance gain.

> >> In usermanual, the "??=" definition is:
> >> 
> >> Setting a default value (??=)
> >> 	A ??= "somevalue"
> >> 	A ??= "someothervalue"
> >> If A is set before the above, it will retain that value.  If A is
> >> unset 
> >> prior to the above, A will be set to someothervalue.  This is a lazy
> >> version of ?=, in that the assignment does not occur until the end of
> >> the parsing process, so that the last, rather than the first, ??=
> >> assignment to a given variable will be used. 
> >> 
> >> Our patch logic isn't strickly following the "??=" definition, since
> >> the assignment doesn't occurs in end of parsing process...
> >> Except this one, I think other behaviors for ??= do not change.
> > 
> > I think it is, as long as a getVar on a variable happens after all
> > the evaluations of that variable which I think should be true or else
> > even current design has problem. In that way when evaluating variable
> > assignments, you keep 'defaultvalue' updated until the last "??="
> > assignment. Then later a getVar() on that variable happens which then
> > you just return the right defaultvalue. :-)    
> 
> Agree.

I also agree, I think we can adjust the definition of how this is
handled slightly. There is also a change in behaviour as now, when one
of these variables is looked up, it will get the default value rather
than None if finalise() hasn't been called. I don't think this is much
of an issue though.

> >> --- a/bitbake/lib/bb/parse/ast.py
> >> +++ b/bitbake/lib/bb/parse/ast.py
> >> @@ -109,10 +109,8 @@ class DataNode(AstNode):
> >>         if 'flag' in groupd and groupd['flag'] != None:
> >>             bb.data.setVarFlag(key, groupd['flag'], val, data)
> >>         elif groupd["lazyques"]:
> >> -            assigned = bb.data.getVar("__lazy_assigned", data) or []
> >> -            assigned.append(key)
> >> -            bb.data.setVar("__lazy_assigned", assigned, data)
> >>             bb.data.setVarFlag(key, "defaultval", val, data)
> >> +            bb.data.setVar(key, None, data)
> > 
> > This I think is incorrect. You actually wiped out previous assignment
> > before ??=, and thus end up to always have default value favored
> > unless there're other direct assignments after ??= evaluation. Just
> > touch the flag should be enough.   
> 
> Ah, yes, I need to check whether the value has been setVar before, see following patch. 
> 
> This two lines are necessary in the following patch
> 
> +            if bb.data.getVarFlag(key, "content", data) is None:
> +                bb.data.setVar(key, None, data)
> 
> because setVar will add the key into override list, which could not be
> achieved by just calling "setVarFlag". For the later formal patch, I
> will add comments on the two lines.

This is a little worrying and I think we have insight into a new bug
here which is that if you just have a variable:

foo_OVERA[bar] = "x"

and foo is never set as a variable directly, the override is never
expanded.

There is a strong argument here to make setVar(...) a special case of
setVarFlag(..., "content") although I worry about the performance
implications.

Chris: Any opinion?

Cheers,

Richard




