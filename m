Return-Path: <jonathan.richardson@broadcom.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 403B7E00D94; Tue, 18 Jun 2019 13:29:03 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.166.53 listed in list.dnswl.org]
Received: from mail-io1-f53.google.com (mail-io1-f53.google.com
	[209.85.166.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EB0E4E00D42
	for <poky@yoctoproject.org>; Tue, 18 Jun 2019 13:29:02 -0700 (PDT)
Received: by mail-io1-f53.google.com with SMTP id r185so26956916iod.6
	for <poky@yoctoproject.org>; Tue, 18 Jun 2019 13:29:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
	h=from:mime-version:thread-index:date:message-id:subject:to;
	bh=eEA9TXi4ShTvQcSA+6FEJIReCOvrJ9z96nCMGn8PyPU=;
	b=RtPf373l4iFI4q/TM2uDLHgix6lTw2+/Gc+gbviuOX3q+4fFJEqLPFkKOQsHaS05Pe
	7f/fJzFw8kZRxNHbyRsVnP0HdubKptIGqpMSWRM2Ry/gI3vipnRjc879F0FF3R/n6qBj
	Q8opnxOEvH/V3px+eI7Q8pF+B4bKDFYadtbr4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:mime-version:thread-index:date:message-id
	:subject:to;
	bh=eEA9TXi4ShTvQcSA+6FEJIReCOvrJ9z96nCMGn8PyPU=;
	b=CsCb6TXIVaAknkaMHg0Vc0ir0nthAlMVfx1ZN13eNNgmAzuEthq1IQrwq0wkkwLXQ3
	lVxlpmsAvOpbDMHBxFCZDNRzyMx3ITi394NAZIFsbfQPYgyfrwG8oVBdRFbXNEWXsYn4
	sDKIYsYIppzVyHRO/uF3SCjMgp3yHSTxYLvqnrXpfY6Cv7OlAEdk7WTw5ylWdy/YgnDB
	WnKJ1fUjiy6UTLgQm0MQmQpCP9mPClYcaG9En6ievi/Zcze7antNh5sUe1XbZ2iAWw4n
	JCU6vZqy/J2x6SLllAm8o4yRnoRCbM2XlljgeuZlFM3moht/Np/Eyfb/0OGy2MtRylmV
	xE4A==
X-Gm-Message-State: APjAAAXu+CIw0tETKT7NlAZ5MMpAgj1hQSI6hKLW1RZZRdqAc8ImJK9G
	eszfCupieAjTr6cjtCsbVvD/tyxUTcbpjopiL0z+9nHnC7Y=
X-Google-Smtp-Source: APXvYqxkxpp1/JYZ44hH5mf8qNkn/qewxagOPmgP+m/A1tWVJ1g2tdi/BiGJDgakAx6mMR4rrdHZNWKUubEW3tJBvew=
X-Received: by 2002:a6b:cd86:: with SMTP id
	d128mr63614676iog.234.1560889741925; 
	Tue, 18 Jun 2019 13:29:01 -0700 (PDT)
From: Jonathan Richardson <jonathan.richardson@broadcom.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 14.0
Thread-Index: AdUmE4E8uT42vTXMTzuNqOekGSY/Nw==
Date: Tue, 18 Jun 2019 13:29:00 -0700
Message-ID: <e3607e3b603a3c19c520e59774b7039d@mail.gmail.com>
To: poky@yoctoproject.org
Subject: openssl10 in warrior
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
X-List-Received-Date: Tue, 18 Jun 2019 20:29:03 -0000
Content-Type: text/plain; charset="UTF-8"

Hello,

How do you set the version of openssl back to openssl10? There is no
PROVIDES
openssl in openssl10  so I can't set PREFERRED_PROVIDER_openssl. If I
change my
DEPENDS in the my recipe to openssl10-native  eventually another native
recipe that
depends on openssl tries to populate a library to sysroot and fails
because its already
there.

Thanks.

