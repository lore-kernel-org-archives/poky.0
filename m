Received: from mailout4.zoneedit.com (mailout4.zoneedit.com [64.68.198.64])
 by mx.groups.io with SMTP id smtpd.web11.1343.1592437395417536587
 for <poky@lists.yoctoproject.org>;
 Wed, 17 Jun 2020 16:43:16 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=none, err=permanent DNS error (domain: denix.org, ip: 64.68.198.64, mailfrom: denis@denix.org)
Received: from localhost (localhost [127.0.0.1])
	by mailout4.zoneedit.com (Postfix) with ESMTP id B1E0340B30;
	Wed, 17 Jun 2020 23:43:14 +0000 (UTC)
Received: from mailout4.zoneedit.com ([127.0.0.1])
	by localhost (zmo14-pco.easydns.vpn [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tYiS0VOkK1U5; Wed, 17 Jun 2020 23:43:14 +0000 (UTC)
Received: from mail.denix.org (pool-100-15-86-127.washdc.fios.verizon.net [100.15.86.127])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mailout4.zoneedit.com (Postfix) with ESMTPSA id 94EA740A46;
	Wed, 17 Jun 2020 23:43:13 +0000 (UTC)
Received: by mail.denix.org (Postfix, from userid 1000)
	id E7AE517320A; Wed, 17 Jun 2020 19:43:12 -0400 (EDT)
Date: Wed, 17 Jun 2020 19:43:12 -0400
From: "Denys Dmytriyenko" <denis@denix.org>
To: jjvazha@yahoo.com
Cc: poky@lists.yoctoproject.org
Subject: Re: [poky] #yocto How to access a varibale exported by the shell in a recepie
Message-ID: <20200617234312.GA17660@denix.org>
References: <DSy7.1592436140449998284.HX8O@lists.yoctoproject.org>
MIME-Version: 1.0
In-Reply-To: <DSy7.1592436140449998284.HX8O@lists.yoctoproject.org>
User-Agent: Mutt/1.5.20 (2009-06-14)
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

https://www.yoctoproject.org/docs/3.1/bitbake-user-manual/bitbake-user-manual.html#var-bb-BB_ENV_EXTRAWHITE

On Wed, Jun 17, 2020 at 04:22:20PM -0700, jjvazha via lists.yoctoproject.org wrote:
> 0
> 
> I have a yocto recepie file. However I want to set a value to the variable , by exporting a variable
> 
> For example I modified I added a variable in oe-init-build-env, ( whihc calls 'svn_util')
> 
> export REPO_BRANCH_ROOT=${REPO_BRANCH_ROOT}
> 
> The REPO_BRANCH_ROOT variable is set by running a utility 'svn_util', by looking at by current branch.
> 
> Now in my recepie.bb file SRC_URI = "\ svn://${REPO_ROOT_NO_URI}/${REPO_BRANCH_ROOT}/sample module=mymodule;protocol=protocol=http;rev=HEAD \ "
> 
> However do_fetch: fails as follows. Fetcher failure for URL: 'svn://${REPO_ROOT_NO_URI}/${REPO_BRANCH_ROOT}/sample;module=mymodule;protocol=http;rev=HEAD'. Unable to fetch URL from any source.
> 
> How do I make .bb file to be aware of my current branch and reposotory uri . I do not want to hard code it in the bb file, or local.conf file . Becuase if the .bb file is checked in to a different branch it should work correctly across all branch.
> 
> Or to rephrase the question , How a shell exported variable be accessed in the recepie file.

> 

