Return-Path: <Vignesh.Rajendran@in.bosch.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 00936E00A1C; Wed, 18 Apr 2018 21:26:50 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from de-out1.bosch-org.com (de-out1.bosch-org.com [139.15.230.186])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 91324E0073D
	for <poky@yoctoproject.org>; Wed, 18 Apr 2018 21:26:49 -0700 (PDT)
Received: from fe0vm1649.rbesz01.com (unknown [139.15.230.188])
	by fe0vms0186.rbdmz01.com (Postfix) with ESMTPS id 40RQtH1Tq6z1XLGPT
	for <poky@yoctoproject.org>; Thu, 19 Apr 2018 06:26:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=in.bosch.com;
	s=2015-01-21; t=1524112007;
	bh=VURIE/ME8s/v0Zmu41mmjF1MCswarUxSeUYl0NKKAlY=; l=10;
	h=From:From:Reply-To:Sender;
	b=MugJ7dC+t5CHEMkWKsAJqWFS2GCnytupk9fmRM2sucZA+oYDIlqv5hzrsXRVNw4qw
	hlq3onWaeA2C7QoBMbnSqZE8zGtcocDnSyO7ifk/V7tSdNN5hqi6M3Htxq8pAnbHjC
	SIdY8t4e2cpnDJGOz6qc9Ezeaz8ZaUw+ACuZzS1M=
Received: from fe0vm1740.rbesz01.com (unknown [10.58.172.176])
	by fe0vm1649.rbesz01.com (Postfix) with ESMTPS id 40RQtH13wpz20
	for <poky@yoctoproject.org>; Thu, 19 Apr 2018 06:26:47 +0200 (CEST)
X-AuditID: 0a3aad14-049ff70000002cdc-c5-5ad81a8abae4
Received: from si0vm1949.rbesz01.com ( [10.58.173.29])
	(using TLS with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(Client did not present a certificate)
	by fe0vm1740.rbesz01.com (SMG Outbound) with SMTP id
	4E.AA.11484.A8A18DA5; Thu, 19 Apr 2018 06:26:50 +0200 (CEST)
Received: from FE-HUB1000.de.bosch.com (fe-hub1000.de.bosch.com [10.4.103.107])
	by si0vm1949.rbesz01.com (Postfix) with ESMTPS id 40RQtG65g6z6D44Ln
	for <poky@yoctoproject.org>; Thu, 19 Apr 2018 06:26:46 +0200 (CEST)
Received: from APAC (10.169.42.196) by FE-HUB1000.de.bosch.com (10.4.103.107)
	with Microsoft SMTP Server id 14.3.319.2;
	Thu, 19 Apr 2018 06:26:46 +0200
From: Vignesh Rajendran <vignesh.rajendran@in.bosch.com>
To: <poky@yoctoproject.org>
Date: Thu, 19 Apr 2018 09:56:42 +0530
Message-ID: <cover.1522820703.git.vignesh.rajendran@in.bosch.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
X-Originating-IP: [10.169.42.196]
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFvrHJsWRmVeSWpSXmKPExsXCZbVWVrdL6kaUwe9XXBbT/61hd2D0aD/R
	xxbAGMVlk5Kak1mWWqRvl8CVsXb7ZOaC+awV7/fsY29gXM7SxcjJISFgIrH+4EnGLkYuDiGB
	GUwST562sUI4txklHq26wQLhzGSU+HvnNXsXIwcHm4CFxJNnViCmiIC0xLl9lSCDmAXMJGZ1
	r2YHsYUFPCQOTljKDGKzCKhKtHyaxQhi8wo4Srz7+YcdYrGcxM1zncwQcUGJkzOfsEDMkZA4
	+OIFM0SNosSmza9YJjDyzUJSNgtJ2QJGplWMommpBmW5huYmBnpFSanFVQaGesn5uZsYIaEj
	soNxxenQQ4wCHIxKPLy/2W5ECbEmlhVX5h5iNOVgUhLlPW99PUqILyk/pTIjsTgjvqg0J7VY
	SYqXkYGBQUgYLlxcmpSbWVycmZ93iFGCg1lJhFf8LFAfb0piZVVqUT5E2yFGaQ4WJXHenpSa
	KCGB9MSS1OzU1ILUIpisNQeHkgRvsSTQDYJFqempFWmZOSUwaSVZiJ1iyDLI1jJxcB5iNObg
	AdptCjKCt7ggMbc4Mx2qXRKiXQgmitB6itFcSpx3GkiPAEg2ozQPbquUDK9m89UoIVEkCYTO
	V4w3GIHhJsx7AqSZB5jwEPZJ8O4QnhMpJAgVRGgyWgLUI3CURaLjUZHEvB1fGSXWtV1ilbi0
	axa7xImTO9kltl05IyRxcsobEYlbjw+KSnx+v0pK4taCbjmJ/VO/K0psaTytLPHm9GVNidav
	K3Ukdky5bCAxtfWqocSv9rmmEj8/HreR6DjU6yyxc9ocZ4l/fxY7SyxqfOUpsX7uAx+JnpWz
	/SVWPHzhL7G/e0WwxOlLx4MlDj1bHyJx5fDGMIkd06ZHScx70ZUq8eL33NxXwLBkAoblNeMr
	oLAsSSzBEpZQUYTnpBoYXSdU6NT2LLkasjaWYcm/1olqoj8t99oUcffIWXnI+YUaXPolGsof
	ssDcVsRc9fjZIqkFbVFLVNfuOeAgw7qb+UkjC4e+5cnSmkfR5ZOiNmx7wnIr6WOP8C/P05a5
	50889rv4umnTv8xFu7Nr2ZM8dxqcs3qednZDwbckDk7RXvvUNZN3h9xSYinOSDTUYi4qTgQA
	eu6x3BEEAAA=
Subject: [PULL] provide debug sources in externalsrc -dbg packages
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
X-List-Received-Date: Thu, 19 Apr 2018 04:26:51 -0000
Content-Type: text/plain

Hi Yocto,

  I have made some changes to fix missing debug sources in -dbg packages while using externalsrc.
Please have look and let me know for any changes needed.

  Thanks. :-)

the changes are available in the git repository at:

  https://git.yoctoproject.org/git/poky-contrib vrajendran/externalsrc-debugsrc
  http://git.yoctoproject.org/cgit.cgi//log/?h=vrajendran/externalsrc-debugsrc

Vignesh Rajendran (1):
  package.bbclass: provide debug sources in externalsrc -dbg packages

 meta/classes/externalsrc.bbclass |  3 +++
 meta/classes/package.bbclass     | 14 +++++++++++---
 2 files changed, 14 insertions(+), 3 deletions(-)

-- 
2.7.4


