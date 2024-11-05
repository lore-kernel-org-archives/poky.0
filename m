Return-Path: <star@gmx.li>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 81CB3D12680
	for <webhook@archiver.kernel.org>; Tue,  5 Nov 2024 10:51:28 +0000 (UTC)
Received: from mout.gmx.net (mout.gmx.net [212.227.17.20])
 by mx.groups.io with SMTP id smtpd.web11.14889.1730803887711091087
 for <poky@lists.yoctoproject.org>;
 Tue, 05 Nov 2024 02:51:28 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="dkim: signature did not verify: crypto/rsa: verification error" header.i=star@gmx.li header.s=s31663417 header.b=OG7KdLUJ;
 spf=pass (domain: gmx.li, ip: 212.227.17.20, mailfrom: star@gmx.li)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmx.li;
	s=s31663417; t=1730803886; x=1731408686; i=star@gmx.li;
	bh=mfYpBDOrY6LlSKI5wCftaya9WmEutND1CrT6794CjtY=;
	h=X-UI-Sender-Class:Message-ID:Date:MIME-Version:To:From:Subject:
	 Content-Type:Content-Transfer-Encoding:cc:
	 content-transfer-encoding:content-type:date:from:message-id:
	 mime-version:reply-to:subject:to;
	b=OG7KdLUJuYtlCNa0QM3BVH6+aI0gvZUFwAtWw1zrZJqRKbiCYQptF6+nKwTuUBqt
	 5PzKPhXBL+0udxWNNybQs2cD+J9KD5RvNSXn7SnzJBDyooaeHnGQKGDSdKc6PP8vU
	 i71oK+6SJvrCLNKKibtwfPIJsdiNh6al1QaBuWYanBn71rBOxhkjJlzqPOqkYBhEZ
	 JiKlbYc6mWzEUUGdcaIUb8NZmHXpOPAmWN7+tYZ7ZUlQu+j1B3injhMHX5e10qeaz
	 ygnXsRKzMasAMA6NjUUxHvaIGLCZpej7HtoWRtrwEuLl+HRgjh+s3BjA22KwY8VSG
	 dFmszTLDrkh0SDYHtw==
X-UI-Sender-Class: 724b4f7f-cbec-4199-ad4e-598c01a50d3a
Received: from [192.168.3.21] ([217.225.88.88]) by mail.gmx.net (mrgmx104
 [212.227.17.174]) with ESMTPSA (Nemesis) id 1MY6Cb-1tJybr0UGb-00PvC9 for
 <poky@lists.yoctoproject.org>; Tue, 05 Nov 2024 11:51:26 +0100
Message-ID: <9d150f03-34b6-4a6e-93d9-2530f12ba3e4@gmx.li>
Date: Tue, 5 Nov 2024 11:51:25 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: "poky@lists.yoctoproject.org" <poky@lists.yoctoproject.org>
From: Arno Steffens <star@gmx.li>
Subject: One recipe for fetch a bigger repo, multiple recipes to build parts
 of it
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable
X-Provags-ID: V03:K1:YkQyfqnsA1MZBz5yNBdHoxhvm8BK54HrNiSHV/mKxt6WCDJUHdj
 s1Gb/1HgUHBMjzeNNbKglZqOHCnfe4Hr5ZXs/s3QvcJVYNOjliJPfTn1t1cOAqImJyTOm9m
 M4AA4ovsyBmWgPu3S8GM+JTD597osY7haVMcAsYky5duQOt+Hq3HZpp+31k7EKlQwGsq+YQ
 /ASwuu3VR47qpD+ET/R1Q==
UI-OutboundReport: notjunk:1;M01:P0:+0jev3TGuBw=;ZUO2J2XQr7NDgsgRJp3ZXjULihz
 N+o1GGQ3Cov9dRc3U9yfY5xmG/5KT60irnrVlDNZDw3xxMOrwBGtq9rT0CaUW7Q2lLXiEOAm0
 lLvzVLLPwYjWnHN8PCxuwaGEJO7dH+mgLsL0jc1X1Gvc8A22oARaGQlIwI+VhMlyin2s9/Eaj
 Zr4eAGbGug7+AOHKF3qnQbx83VcoewT5Aj5jt5UWwVtHGa5f1vAMn4jEIPAdsRGCqPZBds24J
 ZY0zu0fq8gL8NLoRLlwkM/CTy4ZO/SoJrLI2i+of0PTBgtNLG9mepDuCdMuA6fWPCVQmiB9/A
 JQ7YdICkzy0F2NhoOH7xnjbPeWMrplmvSARJOkQaooC18Lew4qJsyeZIkYy2EIHE0uo1CAE+W
 CHy2jKPyzM7Kz+Hrp+UaVjRBEUoCZA8HThe8KOOZ8FE64+yERc0jwPonJHnkcw+ZYsKlwntr7
 MxIkxAb/SOGbGWiQjHQVSITjRi0YWn61M13vXxHQk8QmYgwMyk1x9CPfMv4ughUBJH6SxKlNS
 1imvHzOFYeKqR8/y64h2LdQJqUb6L4sVP+xdLEA0v56WI1fzM9iKNyH7hAwpuLcvSu/20SayO
 GdMwQIE4NLyhM0DUcyoeRg5o6FQ5v4PS+cGdaKKGvxrfFkgM46lDTvu/+/LqQBqSmXvooPClX
 bdqZkotStTtdqwwvzni3njY6KX0JFg6jzieIKnpWINAQ7j19hAksgj7Bk5kQshNskglzKjBDc
 oW8RDMF0EQfmgcWny1GiQR6M3dQf9ZMYz13v1HHxHqoKfIFAjweeXvw/tXGgo0EWzQ/XD5oAr
 0QIWYPTHAjtKW+fCYGF7HgIw==
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Tue, 05 Nov 2024 10:51:28 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13473

Hello,

Do have a bigger repo with submodules. Before each submodule gets its
tag - so I did have mutliple recipes and need to fetch only parts.

Now there is just one(!) tag for the main repo. Anyhow it was a pain to
clone that repo and submodules multiple times.
So I think about one recipe for just fetching data and multiple recipes
that (depend on download-recipe)  work on the fetched data to compile part=
s?

Problem is, that I have a huge git repo (with submodules / gitsm) and
the download is via gitsm with branch and tag. Than the download folder
is some recipe-name/<tag>+gitAUTOINC+<git-hash> and other recipes can't
know that hash to access this folder.

What is a solution for this? I think about creating a link to the level
below - but that doesn't sound save or clever. What would your approach

Thanks,
Arno

