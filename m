Received: from mx0a-00082601.pphosted.com (mx0a-00082601.pphosted.com [67.231.145.42])
 by mx.groups.io with SMTP id smtpd.web08.622.1633109518908164324
 for <poky@lists.yoctoproject.org>;
 Fri, 01 Oct 2021 10:31:59 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@fb.com header.s=facebook header.b=bYyKVdIL;
 spf=pass (domain: fb.com, ip: 67.231.145.42, mailfrom: prvs=99084d9215=hkleynhans@fb.com)
Received: from pps.filterd (m0044012.ppops.net [127.0.0.1])
	by mx0a-00082601.pphosted.com (8.16.1.2/8.16.1.2) with SMTP id 191EOK4Y020252
	for <poky@lists.yoctoproject.org>; Fri, 1 Oct 2021 10:31:58 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fb.com; h=from : to : cc : subject
 : date : message-id : mime-version : content-transfer-encoding :
 content-type; s=facebook; bh=ObHE2WiPmbdAgtE53xPmOfCId5QcRzekAmK2s6sce1E=;
 b=bYyKVdILZGb81ZBE1t0UfPcL7EMA5zQaLVJgxXXnLoaEBBjrwWc+mwFGm41U7UiMDMTx
 LJ05aSHB0ydROLcIzotOSX/9/2wzBIm39msnW4IagWVeKBJr/PkkLfiSC5OazQQyRanB
 ryqF4GHXfM/0sxMJcDAt0MuN/lVUHZjxyNM= 
Received: from maileast.thefacebook.com ([163.114.130.16])
	by mx0a-00082601.pphosted.com with ESMTP id 3be42e997y-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <poky@lists.yoctoproject.org>; Fri, 01 Oct 2021 10:31:58 -0700
Received: from intmgw001.05.ash9.facebook.com (2620:10d:c0a8:1b::d) by
 mail.thefacebook.com (2620:10d:c0a8:83::5) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.14; Fri, 1 Oct 2021 10:31:57 -0700
Received: by devvm2497.lla0.facebook.com (Postfix, from userid 230225)
	id CC398D9547AC; Fri,  1 Oct 2021 10:31:54 -0700 (PDT)
From: "Henry Kleynhans" <hkleynhans@fb.com>
To: <poky@lists.yoctoproject.org>
CC: <hkleynhans@fb.com>, <rmikey@fb.com>
Subject: [PATCH 1/1] sstate: Switch to Zstandard compressor
Date: Fri, 1 Oct 2021 10:31:51 -0700
Message-ID: <20211001173152.3015007-1-hkleynhans@fb.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-FB-Internal: Safe
X-FB-Source: Intern
X-Proofpoint-GUID: diEfSmlv-7xPkwS_yzI8hXNw0eEvlL2X
X-Proofpoint-ORIG-GUID: diEfSmlv-7xPkwS_yzI8hXNw0eEvlL2X
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.182.1,Aquarius:18.0.790,Hydra:6.0.391,FMLib:17.0.607.475
 definitions=2021-10-01_04,2021-10-01_02,2020-04-07_01
X-Proofpoint-Spam-Details: rule=fb_default_notspam policy=fb_default score=0 clxscore=1015 bulkscore=0
 impostorscore=0 adultscore=15 priorityscore=1501 suspectscore=0 mlxscore=0
 malwarescore=0 spamscore=0 mlxlogscore=436 lowpriorityscore=0 phishscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2109230001
 definitions=main-2110010125
X-FB-Internal: deliver
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain

Patch revision, changes from the last version:
* Switch to Zstandard rather than adding it as an option.
* Specify 'zstd' threading and compression as arguments instead of
  using environment variables
* Remove debug output
* Non-posix if statements were removed as a result of replacing 'gzip'
  with 'zstd'

I am not sure if we need support for 'pzstd'.  If this is a requirement
I can add it in a subsequent revision.

