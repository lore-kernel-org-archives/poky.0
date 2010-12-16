Return-Path: <sgw@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id B9FE74C811D9;
	Thu, 16 Dec 2010 16:04:29 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 16 Dec 2010 14:04:29 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,357,1288594800"; d="scan'208";a="869082731"
Received: from unknown (HELO [10.255.14.3]) ([10.255.14.3])
	by fmsmga001.fm.intel.com with ESMTP; 16 Dec 2010 14:04:29 -0800
Message-ID: <4D0A8CEC.5030709@linux.intel.com>
Date: Thu, 16 Dec 2010 14:04:28 -0800
From: Saul Wold <sgw@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: Yocto Project Discussion <yocto@yoctoproject.org>, 
	"poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Announcing poky-extras repository available
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
X-List-Received-Date: Thu, 16 Dec 2010 22:04:29 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit


Hello All,

Recently Richard sent around an email proposing that a new repository be 
created for hosting layers that are not part of the core Yocto Metadata.

This new repository "poky-extras" can host different contributed layers 
and will be open to any one.

 From Richard's proposed ground rules:

> * it has the OE style open contributions model
> * consists of a set of layers, each clearly identified at the top level
> * each layer has a clearly named maintainer or maintainers
> * people respect the layer maintainers
> * layers are split into logical "topics" where at all possible

The first layer contained in this new repository is the meta-linaro 
layer, the top level repository will be removed short since it will now 
be maintained in poky-extras.

If you require write access to this repository, please send your request 
to git-requests@yoctoproject.org

-- 
     Sau!

Saul Wold
Yocto Component Wrangler @ Intel
Yocto Project / Poky Build System


