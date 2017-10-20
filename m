Return-Path: <leonardo.sandoval.gonzalez@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8E03CE00A62; Fri, 20 Oct 2017 12:29:34 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_HI autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.115 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4D1B5E007EF
	for <poky@yoctoproject.org>; Fri, 20 Oct 2017 12:29:32 -0700 (PDT)
Received: from orsmga004.jf.intel.com ([10.7.209.38])
	by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	20 Oct 2017 12:29:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.43,408,1503385200"; 
	d="scan'208,217";a="140517189"
Received: from lsandov1-mobl2.zpn.intel.com (HELO [10.219.128.134])
	([10.219.128.134])
	by orsmga004.jf.intel.com with ESMTP; 20 Oct 2017 12:29:11 -0700
Date: Fri, 20 Oct 2017 14:39:05 -0500
From: Leonardo Sandoval <leonardo.sandoval.gonzalez@linux.intel.com>
To: Joshua Lock <joshua.g.lock@intel.com>
Message-Id: <1508528345.11251.0@fm-out.intel.com>
In-Reply-To: <20171020155406.7074-1-joshua.g.lock@intel.com>
References: <20171020155406.7074-1-joshua.g.lock@intel.com>
X-Mailer: geary/0.11.3
MIME-Version: 1.0
Cc: poky@yoctoproject.org
Subject: Re: [PATCH] yocto-bsp: remove this tool
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
X-List-Received-Date: Fri, 20 Oct 2017 19:29:34 -0000
Content-Type: multipart/alternative; boundary="=-6+c28hqiAuudCzN/9bmR"

--=-6+c28hqiAuudCzN/9bmR
Content-Type: text/plain; charset=utf-8; format=flowed



On Fri, Oct 20, 2017 at 10:54 AM, Joshua Lock <joshua.g.lock@intel.com> 
wrote:
> The yocto-bsp tool is not actively maintained and requires active
> feature development to make it a useful and compelling tool.
> 
> I propose we drop it until such time as someone is able to dedicate
> resources to developing and maintaining it.


(I tried replying this message but email was too heavy so it was not 
delivered at the end.)


Joshua, I believe this patch affects yocto-kernel tool (git grep shows 
some matches with this series), so either the latter is removed or 
leave required files in the repo.





--=-6+c28hqiAuudCzN/9bmR
Content-Type: text/html; charset=utf-8



<br><br>On Fri, Oct 20, 2017 at 10:54 AM, Joshua Lock &lt;joshua.g.lock@intel.com&gt; wrote:<br>
<blockquote type="cite"><div class="plaintext" style="white-space: pre-wrap;">The yocto-bsp tool is not actively maintained and requires active
feature development to make it a useful and compelling tool.

I propose we drop it until such time as someone is able to dedicate
resources to developing and maintaining it.</div></blockquote><div><br></div><div><br></div><div>(I tried replying this message but email was too heavy so it was not delivered at the end.)</div><div><br></div><div><br></div><div>Joshua, I believe this patch affects yocto-kernel tool (git grep shows some matches with this series), so either the latter is removed or leave required files in the repo.</div><div><br></div><div><br></div><div><br></div><blockquote type="cite"><div class="plaintext" style="white-space: pre-wrap;">
</div></blockquote>

--=-6+c28hqiAuudCzN/9bmR--
