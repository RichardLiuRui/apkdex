.class public final Lcom/mpay/hszp/core/a;
.super Ljava/lang/Object;


# static fields
.field private static b:Ljava/lang/String;

.field private static c:Ljava/lang/String;

.field private static d:Lcom/mpay/hszp/core/a;

.field private static l:Landroid/os/Handler;

.field private static m:I


# instance fields
.field a:Landroid/content/BroadcastReceiver;

.field private e:Lcom/mpay/hszp/a/a;

.field private f:Lcom/mpay/hszp/core/PayCallback;

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:Ljava/lang/String;

.field private n:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, ""

    sput-object v0, Lcom/mpay/hszp/core/a;->b:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/mpay/hszp/core/a;->c:Ljava/lang/String;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/mpay/hszp/core/a;->l:Landroid/os/Handler;

    const/16 v0, -0x64

    sput v0, Lcom/mpay/hszp/core/a;->m:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/mpay/hszp/core/a;->g:Z

    iput-boolean v0, p0, Lcom/mpay/hszp/core/a;->h:Z

    iput-boolean v0, p0, Lcom/mpay/hszp/core/a;->i:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mpay/hszp/core/a;->j:Z

    new-instance v0, Lcom/mpay/hszp/core/b;

    invoke-direct {v0, p0}, Lcom/mpay/hszp/core/b;-><init>(Lcom/mpay/hszp/core/a;)V

    iput-object v0, p0, Lcom/mpay/hszp/core/a;->a:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/mpay/hszp/core/c;

    invoke-direct {v0, p0}, Lcom/mpay/hszp/core/c;-><init>(Lcom/mpay/hszp/core/a;)V

    iput-object v0, p0, Lcom/mpay/hszp/core/a;->n:Ljava/lang/Runnable;

    return-void
.end method

.method public static a()Lcom/mpay/hszp/core/a;
    .locals 1

    sget-object v0, Lcom/mpay/hszp/core/a;->d:Lcom/mpay/hszp/core/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/mpay/hszp/core/a;

    invoke-direct {v0}, Lcom/mpay/hszp/core/a;-><init>()V

    sput-object v0, Lcom/mpay/hszp/core/a;->d:Lcom/mpay/hszp/core/a;

    :cond_0
    sget-object v0, Lcom/mpay/hszp/core/a;->d:Lcom/mpay/hszp/core/a;

    return-object v0
.end method

.method static synthetic a(Lcom/mpay/hszp/core/a;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/mpay/hszp/core/a;->n:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic a(Lcom/mpay/hszp/core/a;ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/mpay/hszp/core/a;->f:Lcom/mpay/hszp/core/PayCallback;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/mpay/hszp/core/a;->h:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mpay/hszp/core/a;->h:Z

    iget-object v0, p0, Lcom/mpay/hszp/core/a;->f:Lcom/mpay/hszp/core/PayCallback;

    invoke-interface {v0, p1, p2}, Lcom/mpay/hszp/core/PayCallback;->onResult(ILjava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mpay/hszp/core/a;->i:Z

    :cond_0
    return-void
.end method

.method public static b()I
    .locals 1

    sget v0, Lcom/mpay/hszp/core/a;->m:I

    return v0
.end method

.method static synthetic b(Lcom/mpay/hszp/core/a;)Lcom/mpay/hszp/core/PayCallback;
    .locals 1

    iget-object v0, p0, Lcom/mpay/hszp/core/a;->f:Lcom/mpay/hszp/core/PayCallback;

    return-object v0
.end method

.method static synthetic c()Landroid/os/Handler;
    .locals 1

    sget-object v0, Lcom/mpay/hszp/core/a;->l:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic c(Lcom/mpay/hszp/core/a;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mpay/hszp/core/a;->k:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 22

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/mpay/hszp/core/a;->g:Z

    const/4 v3, 0x0

    sput v3, Lcom/mpay/hszp/core/a;->m:I

    const/4 v3, 0x0

    :try_start_0
    const-string v4, "o"

    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lcom/mm/hszp/paycode/f;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    move/from16 v18, v3

    :goto_0
    :try_start_1
    const-string v3, "utf-8"

    move-object/from16 v0, p2

    invoke-static {v0, v3}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    const-class v3, Lcom/mpay/hszp/a/a;

    move-object/from16 v0, v19

    invoke-static {v0, v3}, Lcom/mpay/hszp/core/e;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mpay/hszp/a/a;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/mpay/hszp/core/a;->e:Lcom/mpay/hszp/a/a;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    sget v3, Lcom/mpay/hszp/core/a;->m:I

    add-int/lit8 v3, v3, 0x1

    sput v3, Lcom/mpay/hszp/core/a;->m:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mpay/hszp/core/a;->e:Lcom/mpay/hszp/a/a;

    invoke-virtual {v3}, Lcom/mpay/hszp/a/a;->h()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mpay/hszp/core/a;->e:Lcom/mpay/hszp/a/a;

    invoke-virtual {v3}, Lcom/mpay/hszp/a/a;->b()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mpay/hszp/core/a;->e:Lcom/mpay/hszp/a/a;

    invoke-virtual {v3}, Lcom/mpay/hszp/a/a;->c()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mpay/hszp/core/a;->e:Lcom/mpay/hszp/a/a;

    invoke-virtual {v3}, Lcom/mpay/hszp/a/a;->d()I

    move-result v6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mpay/hszp/core/a;->e:Lcom/mpay/hszp/a/a;

    invoke-virtual {v3}, Lcom/mpay/hszp/a/a;->e()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mpay/hszp/core/a;->e:Lcom/mpay/hszp/a/a;

    invoke-virtual {v3}, Lcom/mpay/hszp/a/a;->f()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mpay/hszp/core/a;->e:Lcom/mpay/hszp/a/a;

    invoke-virtual {v3}, Lcom/mpay/hszp/a/a;->g()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mpay/hszp/core/a;->e:Lcom/mpay/hszp/a/a;

    invoke-virtual {v3}, Lcom/mpay/hszp/a/a;->i()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mpay/hszp/core/a;->e:Lcom/mpay/hszp/a/a;

    invoke-virtual {v3}, Lcom/mpay/hszp/a/a;->k()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mpay/hszp/core/a;->e:Lcom/mpay/hszp/a/a;

    invoke-virtual {v3}, Lcom/mpay/hszp/a/a;->l()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mpay/hszp/core/a;->e:Lcom/mpay/hszp/a/a;

    invoke-virtual {v3}, Lcom/mpay/hszp/a/a;->m()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mpay/hszp/core/a;->e:Lcom/mpay/hszp/a/a;

    invoke-virtual {v3}, Lcom/mpay/hszp/a/a;->n()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mpay/hszp/core/a;->e:Lcom/mpay/hszp/a/a;

    invoke-virtual {v3}, Lcom/mpay/hszp/a/a;->o()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mpay/hszp/core/a;->e:Lcom/mpay/hszp/a/a;

    invoke-virtual {v3}, Lcom/mpay/hszp/a/a;->j()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mpay/hszp/core/a;->e:Lcom/mpay/hszp/a/a;

    invoke-virtual {v3}, Lcom/mpay/hszp/a/a;->a()Ljava/lang/String;

    move-result-object v3

    const/16 v20, 0xe

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput-object v10, v20, v21

    const/16 v21, 0x1

    aput-object v4, v20, v21

    const/16 v21, 0x2

    aput-object v5, v20, v21

    const/16 v21, 0x3

    aput-object v7, v20, v21

    const/16 v21, 0x4

    aput-object v8, v20, v21

    const/16 v21, 0x5

    aput-object v9, v20, v21

    const/16 v21, 0x6

    aput-object v11, v20, v21

    const/16 v21, 0x7

    aput-object v13, v20, v21

    const/16 v21, 0x8

    aput-object v14, v20, v21

    const/16 v21, 0x9

    aput-object v15, v20, v21

    const/16 v21, 0xa

    aput-object v16, v20, v21

    const/16 v21, 0xb

    aput-object v17, v20, v21

    const/16 v21, 0xc

    aput-object v12, v20, v21

    const/16 v21, 0xd

    aput-object v3, v20, v21

    invoke-static/range {v20 .. v20}, Lcom/mpay/hszp/core/Utils;->isEmpty([Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_1

    const/16 v20, 0x1

    sput v20, Lcom/mpay/hszp/core/a;->m:I

    const-string v20, "k"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Lcom/mm/hszp/paycode/f;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const-string v19, "j"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/mm/hszp/paycode/f;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    const-string v20, "m"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-static {v0, v1, v12}, Lcom/mm/hszp/paycode/f;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-static {v0, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_0

    invoke-static/range {p1 .. p1}, Lcom/mm/hszp/paycode/f;->a(Landroid/content/Context;)V

    invoke-static/range {p1 .. p1}, Lcom/mm/hszp/log/f;->a(Landroid/content/Context;)V

    const-string v19, "j"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-static {v0, v1, v10}, Lcom/mm/hszp/paycode/f;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/16 v19, 0x2

    sput v19, Lcom/mpay/hszp/core/a;->m:I

    new-instance v19, Lcom/mm/hszp/paycode/b;

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lcom/mm/hszp/paycode/b;-><init>(Landroid/content/Context;)V

    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput-object v10, v20, v21

    const/16 v21, 0x1

    aput-object v12, v20, v21

    invoke-virtual/range {v19 .. v20}, Lcom/mm/hszp/paycode/b;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    const/16 v19, 0x3

    sput v19, Lcom/mpay/hszp/core/a;->m:I

    new-instance v19, Lcom/mm/hszp/cert/a;

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3}, Lcom/mm/hszp/cert/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual/range {v19 .. v19}, Lcom/mm/hszp/cert/a;->a()V

    const/4 v3, 0x4

    sput v3, Lcom/mpay/hszp/core/a;->m:I

    move-object/from16 v3, p1

    invoke-static/range {v3 .. v17}, Lcom/mm/hszp/log/f;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x5

    sput v3, Lcom/mpay/hszp/core/a;->m:I

    const-string v3, "o"

    new-instance v4, Ljava/lang/StringBuilder;

    add-int/lit8 v5, v18, 0x1

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-static {v0, v3, v4}, Lcom/mm/hszp/paycode/f;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void

    :catch_0
    move-exception v4

    move/from16 v18, v3

    goto/16 :goto_0

    :catch_1
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v4, "{\"code\":-99,\"msg\":\"init xml is empty\"}"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 v3, -0x1

    sput v3, Lcom/mpay/hszp/core/a;->m:I

    goto :goto_1

    :cond_1
    const/16 v3, -0x65

    sput v3, Lcom/mpay/hszp/core/a;->m:I

    goto :goto_1
.end method

.method public final b(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5

    :try_start_0
    const-string v0, "utf-8"

    invoke-static {p2, v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-class v0, Lcom/mpay/hszp/a/a;

    invoke-static {v1, v0}, Lcom/mpay/hszp/core/e;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mpay/hszp/a/a;

    iput-object v0, p0, Lcom/mpay/hszp/core/a;->e:Lcom/mpay/hszp/a/a;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Lcom/mpay/hszp/core/a;->e:Lcom/mpay/hszp/a/a;

    invoke-virtual {v0}, Lcom/mpay/hszp/a/a;->h()Ljava/lang/String;

    move-result-object v0

    const-string v2, "j"

    invoke-static {p1, v2}, Lcom/mm/hszp/paycode/f;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/mpay/hszp/core/a;->m:I

    const/4 v4, 0x5

    if-ne v3, v4, :cond_0

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0, p1, v1}, Lcom/mpay/hszp/core/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    const-wide/16 v0, 0x1388

    :try_start_1
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "{\"code\":-99,\"msg\":\"init xml is invalid\"}"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
