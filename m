Received: from mail-ed1-f47.google.com (mail-ed1-f47.google.com [209.85.208.47])
 by mx.groups.io with SMTP id smtpd.web08.4636.1642458322313746143
 for <poky@lists.yoctoproject.org>;
 Mon, 17 Jan 2022 14:25:23 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20210112.gappssmtp.com header.s=20210112 header.b=MekTLm6l;
 spf=softfail (domain: sakoman.com, ip: 209.85.208.47, mailfrom: steve@sakoman.com)
Received: by mail-ed1-f47.google.com with SMTP id t24so71376367edi.8
        for <poky@lists.yoctoproject.org>; Mon, 17 Jan 2022 14:25:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20210112.gappssmtp.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=psDlTuj2yB5TUW3sdQzJW3WWQZqCawpc4nDTBw4s7cA=;
        b=MekTLm6l6HcSgmzfEhZc+5+IHsO4txFWHEaOxu67ree2FVOwtULZDYxu+DXaL9ug5f
         Sd4jDD7apfkujxoig5sfhNxjmBBGJiXfZ4CdaHfOw7fstfJA8W+684bBJwNgX3IXMZqL
         s36WC78b3qB5/6uZOOXzj5otZ/RQcWxBpMjJA+Qc+RqHhvAthpa6L6o17sV30kc3t4zW
         8KO3QxO5IQZi+ETRvnpl66Ls4/QzrICt6iWZE6cUxffAiCt7A4ba9Iyd885yCES0MLfW
         cgKDi1wdoVDDskUV4x2JlR/3eFoVl5xwD4du6uIivsxPpJaOnUxyLr+mwhVOE25PE4tM
         EO9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=psDlTuj2yB5TUW3sdQzJW3WWQZqCawpc4nDTBw4s7cA=;
        b=2Hd4ffJz7w4vLQPCN+O3Jk0ZGdYZlcAp9TJQROyCAs92Bvw0kyrbwLNJnw/KMYHFug
         mq3TRjCrdyddphOuqxBoytsJ7oLE7BWiIApTB8GAgJllHzm+bjECSi9j5AiPbxW3KWN/
         jq0y7hYKGVYk+1XYiarh56qGiIN2Pv0SMSyTp/nyliCHaE+C3hxOq8TftSXiaF9kAZT9
         RDDp/0W1xz0FkZmR7L+v7dX9Q7kJTHh7rDkaNRSDHQgH93GeZ8IFoshsCUvJWXTXLluj
         gOzzdZ9+HxT1+a6WoIeIGyvpE08JW5bUreqb64rY29VRKa/ReCP/Whp+xV2aEPVwsVMa
         tK9Q==
X-Gm-Message-State: AOAM533XcF7AAvfu2kSC7B2ujP6FEmD6fNpEhcxpRYGq1PozC1VbX7p2
	08+NMXlZthbZZhEQLM5lfdlGRidkQYhEL26Om+BtpQ==
X-Google-Smtp-Source: ABdhPJxGFsvRKE90OSCeCZLLPBJ8yqLtuoR5pGcG7e95A14lpQw5uyo+hnxJy47WGxrajj0Jxhvp1pGatQ7ijT/qj2o=
X-Received: by 2002:a17:907:1b24:: with SMTP id mp36mr18592878ejc.487.1642458320664;
 Mon, 17 Jan 2022 14:25:20 -0800 (PST)
MIME-Version: 1.0
References: <CAOMZO5AyegXN6him+WVB=9g7RBHsB__5w26pYUg3_Xxy9dK4bw@mail.gmail.com>
In-Reply-To: <CAOMZO5AyegXN6him+WVB=9g7RBHsB__5w26pYUg3_Xxy9dK4bw@mail.gmail.com>
From: "Steve Sakoman" <steve@sakoman.com>
Date: Mon, 17 Jan 2022 12:25:09 -1000
Message-ID: <CAOSpxdbUot8-mASW+_bQwZbHgWQnnP0iFH11UXRjcszqxzEVww@mail.gmail.com>
Subject: Re: [poky] poky: request to backport ae219e1f74600 to dunfell
To: Fabio Estevam <festevam@gmail.com>
Cc: poky@lists.yoctoproject.org, Marek Vasut <marex@denx.de>, alex.kanavin@gmail.com, 
	Richard Purdie <richard.purdie@linuxfoundation.org>
Content-Type: text/plain; charset="UTF-8"

On Mon, Jan 17, 2022 at 9:54 AM Fabio Estevam <festevam@gmail.com> wrote:
>
> Hi,
>
> On a host machine with Python 3.10 I am seeing the following error on Dunfell:
>
> File "/work/festevam/conp_embedded/poky/bitbake/lib/bb/compat.py",
> line 7, in <module>
>     from collections import MutableMapping, KeysView, ValuesView,
> ItemsView, OrderedDict
> ImportError: cannot import name 'MutableMapping' from 'collections'
> (/usr/lib64/python3.10/collections/__init__.py)
> 2022-01-17 17:33:36 - ERROR    - Command returned non-zero exit status 1
>
> Can the commit below:
> https://git.openembedded.org/bitbake/commit/?id=ae219e1f7460077f4492b31ac91cef4cf9b17277
>
> be backported to bitbake in poky dunfell, please?

I'm a bit confused, since this patch has already been backported!

https://git.openembedded.org/bitbake/commit/?h=1.46&id=4b66d498eab22eca29c9e3a7fdfa5c6e54055e78

It should be in 3.1.12 and 3.1.13

Steve

>
> KeysView, ValuesView, ItemsView, and OrderedDict do not exist in
> master, so the backport is not so trivial.
>
> Thanks,
>
> Fabio Estevam
>
> 
>
