Return-Path: <jin@xn--80adja5bqm.su>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 37804E00C4F; Wed, 16 Nov 2016 11:04:37 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,SPF_HELO_PASS
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from xn--80adja5bqm.su (xn--80adja5bqm.su [64.137.223.212])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DD83AE00712
	for <poky@yoctoproject.org>; Wed, 16 Nov 2016 11:04:34 -0800 (PST)
Received: by xn--80adja5bqm.su (Postfix, from userid 1000)
	id 530272030AE5; Wed, 16 Nov 2016 14:04:33 -0500 (EST)
DKIM-Filter: OpenDKIM Filter v2.10.3 xn--80adja5bqm.su 530272030AE5
Date: Wed, 16 Nov 2016 14:04:33 -0500
From: Sergey 'Jin' Bostandzhyan <jin@mediatomb.cc>
To: poky@yoctoproject.org
Message-Id: <20161116190433.GC18607@xn--80adja5bqm.su>
References: <20161115110836.GA9906@xn--80adja5bqm.su>
MIME-Version: 1.0
In-Reply-To: <20161115110836.GA9906@xn--80adja5bqm.su>
User-Agent: Mutt/1.5.21 (2010-09-15)
Subject: Re: How to debug task hash mismatches?
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
X-List-Received-Date: Wed, 16 Nov 2016 19:04:37 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline


On Tue, Nov 15, 2016 at 06:08:36AM -0500, Sergey 'Jin' Bostandzhyan wrote:
> So, where do I find this 9981d86bd31215aa722d7b2dc283fd1c hash?
> I tried to vardepsexclude some variables by trial and error, but did not get
> anywhere...
> 
> I also noticed that upon cleanall/rebuild the hash 
> fad0983c152e6b6b60fb1a5519bfeebb stays the same, while the other one changes.
> 
> I'm really blocked by this issue, so any help would be greately appreciated.
> 

I'll answer my own question, so that the solution is documented here:

when the debug code is enabled, in order to get both hashes dumped one has to 
either wipe tmp/cache or modify the recipe to trigger new parsing. 
Thanks to Richard for the hint :)

Kind regards,
Sergey


