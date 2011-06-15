Return-Path: <Xiaofeng.Yan@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 6E72E4C800C1
	for <poky@yoctoproject.org>; Wed, 15 Jun 2011 05:12:21 -0500 (CDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p5FACKaN004430
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 15 Jun 2011 03:12:20 -0700 (PDT)
Received: from [128.224.162.178] (128.224.162.178) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.1.255.0;
	Wed, 15 Jun 2011 03:12:20 -0700
Message-ID: <4DF88592.6010209@windriver.com>
Date: Wed, 15 Jun 2011 18:12:34 +0800
From: Xiaofeng Yan <xiaofeng.yan@windriver.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.17) Gecko/20110424 Thunderbird/3.1.10
MIME-Version: 1.0
To: <poky@yoctoproject.org>, <yocto@linux.intel.com>
X-Originating-IP: [128.224.162.178]
Subject: Absent libraries and command on lsb image
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
X-List-Received-Date: Wed, 15 Jun 2011 10:12:21 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

Hi all,

The following  command and libraries existed on lsb image two weeks ago 
but they don't exist after building an lsb image with the latest poky 
now. Does anybody know  which updated recipes caused these changes ?

Command check:
|--No command "strip"
Library check:
|--No library libatk-1.0.so.0
|--No library libgdk-x11-2.0.so
|--No library libcairo.so.2
|--No library libpango-1.0.so
|--No library libpangoft2-1.0.so.0
|--No library libpangoxft-1.0.so.0
|--No library libpangocairo-1.0.so

