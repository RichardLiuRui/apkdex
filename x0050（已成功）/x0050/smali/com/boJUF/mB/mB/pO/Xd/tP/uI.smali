.class public Lcom/boJUF/mB/mB/pO/Xd/tP/uI;
.super Lcom/boJUF/mB/mB/pO/tP/uI;


# static fields
.field private static volatile sj:Lcom/boJUF/mB/mB/pO/Xd/tP/uI;


# instance fields
.field private IL:Landroid/content/Context;

.field private Lx:Lcom/boJUF/mB/mB/pO/Xd/mB/uI;

.field private VY:Lcom/boJUF/mB/mB/Xd/uI;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/boJUF/mB/mB/pO/Xd/tP/uI;->sj:Lcom/boJUF/mB/mB/pO/Xd/tP/uI;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Lcom/boJUF/mB/mB/pO/tP/uI;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/boJUF/mB/mB/pO/Xd/tP/uI;->IL:Landroid/content/Context;

    iget-object v0, p0, Lcom/boJUF/mB/mB/pO/Xd/tP/uI;->IL:Landroid/content/Context;

    invoke-static {v0}, Lcom/boJUF/mB/mB/pO/Xd/mB/uI;->LA(Landroid/content/Context;)Lcom/boJUF/mB/mB/pO/Xd/mB/uI;

    move-result-object v0

    iput-object v0, p0, Lcom/boJUF/mB/mB/pO/Xd/tP/uI;->Lx:Lcom/boJUF/mB/mB/pO/Xd/mB/uI;

    iget-object v0, p0, Lcom/boJUF/mB/mB/pO/Xd/tP/uI;->IL:Landroid/content/Context;

    invoke-static {v0}, Lcom/boJUF/mB/mB/Xd/oC;->LA(Landroid/content/Context;)Lcom/boJUF/mB/mB/Xd/uI;

    move-result-object v0

    iput-object v0, p0, Lcom/boJUF/mB/mB/pO/Xd/tP/uI;->VY:Lcom/boJUF/mB/mB/Xd/uI;

    return-void
.end method

.method static synthetic LA(Lcom/boJUF/mB/mB/pO/Xd/tP/uI;)Lcom/boJUF/mB/mB/pO/Xd/mB/uI;
    .locals 1

    iget-object v0, p0, Lcom/boJUF/mB/mB/pO/Xd/tP/uI;->Lx:Lcom/boJUF/mB/mB/pO/Xd/mB/uI;

    return-object v0
.end method

.method public static LA(Landroid/content/Context;)Lcom/boJUF/mB/mB/pO/Xd/tP/uI;
    .locals 2

    sget-object v0, Lcom/boJUF/mB/mB/pO/Xd/tP/uI;->sj:Lcom/boJUF/mB/mB/pO/Xd/tP/uI;

    if-nez v0, :cond_1

    const-class v1, Lcom/boJUF/mB/mB/pO/Xd/tP/uI;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/boJUF/mB/mB/pO/Xd/tP/uI;->sj:Lcom/boJUF/mB/mB/pO/Xd/tP/uI;

    if-nez v0, :cond_0

    new-instance v0, Lcom/boJUF/mB/mB/pO/Xd/tP/uI;

    invoke-direct {v0, p0}, Lcom/boJUF/mB/mB/pO/Xd/tP/uI;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/boJUF/mB/mB/pO/Xd/tP/uI;->sj:Lcom/boJUF/mB/mB/pO/Xd/tP/uI;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/boJUF/mB/mB/pO/Xd/tP/uI;->sj:Lcom/boJUF/mB/mB/pO/Xd/tP/uI;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic LA(Lcom/boJUF/mB/mB/pO/Xd/tP/uI;Lcom/boJUF/mB/mB/pO/mB/Vr;)V
    .locals 6

    const/4 v5, 0x1

    :try_start_0
    invoke-static {p1}, Lcom/boJUF/mB/mB/mB/oC;->LA(Lcom/boJUF/mB/mB/pO/mB/Vr;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "resultCode"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    sget-object v1, Lcom/boJUF/mB/mB/tP/uI;->j:Ljava/lang/String;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "SOID"

    invoke-virtual {p1}, Lcom/boJUF/mB/mB/pO/mB/Vr;->TP()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "TID"

    invoke-virtual {p1}, Lcom/boJUF/mB/mB/pO/mB/Vr;->na()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "flag"

    const-string v3, "1"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0xc81

    iget-object v3, p0, Lcom/boJUF/mB/mB/pO/Xd/tP/uI;->IL:Landroid/content/Context;

    invoke-static {v2, v1, v3}, Lcom/boJUF/mB/mB/pO/tP/tQ;->LA(ILjava/util/HashMap;Landroid/content/Context;)Z

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/boJUF/mB/mB/pO/Xd/tP/uI;->On(I)Lcom/boJUF/mB/mB/mB/oC;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    const/16 v1, 0x846

    invoke-direct {p0, p1, v0, v1}, Lcom/boJUF/mB/mB/pO/Xd/tP/uI;->LA(Lcom/boJUF/mB/mB/pO/mB/Vr;II)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v1}, Lcom/boJUF/mB/mB/mB/oC;->cp()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x4

    invoke-direct {p0, v3}, Lcom/boJUF/mB/mB/pO/Xd/tP/uI;->TP(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v4, "fullApi"

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "body"

    invoke-virtual {v3, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "soid"

    invoke-virtual {p1}, Lcom/boJUF/mB/mB/pO/mB/Vr;->TP()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "domainId"

    invoke-virtual {v1}, Lcom/boJUF/mB/mB/mB/oC;->LA()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "url"

    invoke-virtual {p1}, Lcom/boJUF/mB/mB/pO/mB/Vr;->IL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/boJUF/mB/mB/pO/Xd/tP/uI;->Lx:Lcom/boJUF/mB/mB/pO/Xd/mB/uI;

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/boJUF/mB/mB/pO/Xd/tP/uI;->IL:Landroid/content/Context;

    invoke-static {v0, v3, v1, v2}, Lcom/boJUF/mB/mB/mB/oC;->LA(Lcom/boJUF/mB/mB/pO/Xd/mB/uI;Ljava/util/HashMap;ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ERROR"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    if-eqz v0, :cond_3

    new-instance v1, Lcom/boJUF/mB/mB/pO/mB/Ut;

    invoke-direct {v1}, Lcom/boJUF/mB/mB/pO/mB/Ut;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "data"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "resultCode"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "soid"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "tks"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0}, Lcom/boJUF/mB/mB/pO/mB/Ut;->cp(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lcom/boJUF/mB/mB/pO/mB/Ut;->On(Ljava/lang/String;)V

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/boJUF/mB/mB/pO/mB/Ut;->On(I)V

    const/4 v4, 0x2

    invoke-virtual {v1, v4}, Lcom/boJUF/mB/mB/pO/mB/Ut;->TP(I)V

    iget-object v4, p0, Lcom/boJUF/mB/mB/pO/Xd/tP/uI;->VY:Lcom/boJUF/mB/mB/Xd/uI;

    invoke-virtual {v4, v0}, Lcom/boJUF/mB/mB/Xd/uI;->bh(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/boJUF/mB/mB/pO/mB/Ut;->LA(Ljava/lang/String;)V

    if-ne v2, v5, :cond_2

    sget-object v0, Lcom/boJUF/mB/mB/tP/uI;->l:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v2, "SOID"

    invoke-virtual {p1}, Lcom/boJUF/mB/mB/pO/mB/Vr;->TP()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "TID"

    invoke-virtual {p1}, Lcom/boJUF/mB/mB/pO/mB/Vr;->na()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "flag"

    const-string v4, "2"

    invoke-virtual {v0, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0xc82

    iget-object v4, p0, Lcom/boJUF/mB/mB/pO/Xd/tP/uI;->IL:Landroid/content/Context;

    invoke-static {v2, v0, v4}, Lcom/boJUF/mB/mB/pO/tP/tQ;->LA(ILjava/util/HashMap;Landroid/content/Context;)Z

    const-string v0, "[]"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    const/16 v1, 0x3ea

    invoke-direct {p0, p1, v0, v1}, Lcom/boJUF/mB/mB/pO/Xd/tP/uI;->LA(Lcom/boJUF/mB/mB/pO/mB/Vr;II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    sget-object v0, Lcom/boJUF/mB/mB/tP/uI;->n:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    :cond_1
    :try_start_3
    iget-object v0, p0, Lcom/boJUF/mB/mB/pO/Xd/tP/uI;->Lx:Lcom/boJUF/mB/mB/pO/Xd/mB/uI;

    invoke-virtual {p1}, Lcom/boJUF/mB/mB/pO/mB/Vr;->On()I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Lcom/boJUF/mB/mB/pO/Xd/mB/uI;->LA(II)V

    iget-object v0, p0, Lcom/boJUF/mB/mB/pO/Xd/tP/uI;->Lx:Lcom/boJUF/mB/mB/pO/Xd/mB/uI;

    invoke-virtual {p1}, Lcom/boJUF/mB/mB/pO/mB/Vr;->TP()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/boJUF/mB/mB/pO/mB/Vr;->na()I

    move-result v3

    const/4 v4, 0x4

    const/4 v5, 0x1

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/boJUF/mB/mB/pO/Xd/mB/uI;->LA(Ljava/lang/String;III)Z

    iget-object v0, p0, Lcom/boJUF/mB/mB/pO/Xd/tP/uI;->Lx:Lcom/boJUF/mB/mB/pO/Xd/mB/uI;

    invoke-virtual {v0, v1}, Lcom/boJUF/mB/mB/pO/Xd/mB/uI;->LA(Lcom/boJUF/mB/mB/pO/mB/Ut;)V

    iget-object v0, p0, Lcom/boJUF/mB/mB/pO/Xd/tP/uI;->IL:Landroid/content/Context;

    invoke-static {v0}, Lcom/boJUF/mB/mB/pO/ek/mB/uI;->LA(Landroid/content/Context;)Lcom/boJUF/mB/mB/pO/ek/mB/uI;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/boJUF/mB/mB/pO/ek/mB/uI;->LA(I)V

    goto/16 :goto_0

    :cond_2
    sget-object v0, Lcom/boJUF/mB/mB/tP/uI;->m:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "SOID"

    invoke-virtual {p1}, Lcom/boJUF/mB/mB/pO/mB/Vr;->TP()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "TID"

    invoke-virtual {p1}, Lcom/boJUF/mB/mB/pO/mB/Vr;->na()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "flag"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0xc82

    iget-object v2, p0, Lcom/boJUF/mB/mB/pO/Xd/tP/uI;->IL:Landroid/content/Context;

    invoke-static {v1, v0, v2}, Lcom/boJUF/mB/mB/pO/tP/tQ;->LA(ILjava/util/HashMap;Landroid/content/Context;)Z

    iget-object v0, p0, Lcom/boJUF/mB/mB/pO/Xd/tP/uI;->Lx:Lcom/boJUF/mB/mB/pO/Xd/mB/uI;

    invoke-virtual {p1}, Lcom/boJUF/mB/mB/pO/mB/Vr;->On()I

    move-result v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/boJUF/mB/mB/pO/Xd/mB/uI;->LA(II)V

    iget-object v0, p0, Lcom/boJUF/mB/mB/pO/Xd/tP/uI;->Lx:Lcom/boJUF/mB/mB/pO/Xd/mB/uI;

    invoke-virtual {p1}, Lcom/boJUF/mB/mB/pO/mB/Vr;->TP()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/boJUF/mB/mB/pO/mB/Vr;->na()I

    move-result v2

    const/4 v3, 0x4

    const/4 v4, 0x2

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/boJUF/mB/mB/pO/Xd/mB/uI;->LA(Ljava/lang/String;III)Z

    const/4 v0, 0x0

    const/16 v1, 0x847

    invoke-direct {p0, p1, v0, v1}, Lcom/boJUF/mB/mB/pO/Xd/tP/uI;->LA(Lcom/boJUF/mB/mB/pO/mB/Vr;II)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    :cond_3
    :try_start_4
    sget-object v0, Lcom/boJUF/mB/mB/tP/uI;->m:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "SOID"

    invoke-virtual {p1}, Lcom/boJUF/mB/mB/pO/mB/Vr;->TP()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "TID"

    invoke-virtual {p1}, Lcom/boJUF/mB/mB/pO/mB/Vr;->na()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "flag"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0xc82

    iget-object v2, p0, Lcom/boJUF/mB/mB/pO/Xd/tP/uI;->IL:Landroid/content/Context;

    invoke-static {v1, v0, v2}, Lcom/boJUF/mB/mB/pO/tP/tQ;->LA(ILjava/util/HashMap;Landroid/content/Context;)Z

    iget-object v0, p0, Lcom/boJUF/mB/mB/pO/Xd/tP/uI;->Lx:Lcom/boJUF/mB/mB/pO/Xd/mB/uI;

    invoke-virtual {p1}, Lcom/boJUF/mB/mB/pO/mB/Vr;->On()I

    move-result v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/boJUF/mB/mB/pO/Xd/mB/uI;->LA(II)V

    iget-object v0, p0, Lcom/boJUF/mB/mB/pO/Xd/tP/uI;->Lx:Lcom/boJUF/mB/mB/pO/Xd/mB/uI;

    invoke-virtual {p1}, Lcom/boJUF/mB/mB/pO/mB/Vr;->TP()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/boJUF/mB/mB/pO/mB/Vr;->na()I

    move-result v2

    const/4 v3, 0x4

    const/4 v4, 0x2

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/boJUF/mB/mB/pO/Xd/mB/uI;->LA(Ljava/lang/String;III)Z

    const/4 v0, 0x0

    const/16 v1, 0x847

    invoke-direct {p0, p1, v0, v1}, Lcom/boJUF/mB/mB/pO/Xd/tP/uI;->LA(Lcom/boJUF/mB/mB/pO/mB/Vr;II)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    :cond_4
    :try_start_5
    sget-object v0, Lcom/boJUF/mB/mB/tP/uI;->k:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "SOID"

    invoke-virtual {p1}, Lcom/boJUF/mB/mB/pO/mB/Vr;->TP()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "TID"

    invoke-virtual {p1}, Lcom/boJUF/mB/mB/pO/mB/Vr;->na()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "flag"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0xc81

    iget-object v2, p0, Lcom/boJUF/mB/mB/pO/Xd/tP/uI;->IL:Landroid/content/Context;

    invoke-static {v1, v0, v2}, Lcom/boJUF/mB/mB/pO/tP/tQ;->LA(ILjava/util/HashMap;Landroid/content/Context;)Z

    iget-object v0, p0, Lcom/boJUF/mB/mB/pO/Xd/tP/uI;->Lx:Lcom/boJUF/mB/mB/pO/Xd/mB/uI;

    invoke-virtual {p1}, Lcom/boJUF/mB/mB/pO/mB/Vr;->On()I

    move-result v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/boJUF/mB/mB/pO/Xd/mB/uI;->LA(II)V

    iget-object v0, p0, Lcom/boJUF/mB/mB/pO/Xd/tP/uI;->Lx:Lcom/boJUF/mB/mB/pO/Xd/mB/uI;

    invoke-virtual {p1}, Lcom/boJUF/mB/mB/pO/mB/Vr;->TP()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/boJUF/mB/mB/pO/mB/Vr;->na()I

    move-result v2

    const/4 v3, 0x4

    const/4 v4, 0x2

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/boJUF/mB/mB/pO/Xd/mB/uI;->LA(Ljava/lang/String;III)Z

    const/4 v0, 0x0

    const/16 v1, 0x847

    invoke-direct {p0, p1, v0, v1}, Lcom/boJUF/mB/mB/pO/Xd/tP/uI;->LA(Lcom/boJUF/mB/mB/pO/mB/Vr;II)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_0
.end method

.method private LA(Lcom/boJUF/mB/mB/pO/mB/Vr;II)V
    .locals 6

    const/4 v5, 0x4

    const/4 v4, 0x0

    invoke-virtual {p1}, Lcom/boJUF/mB/mB/pO/mB/Vr;->TP()Ljava/lang/String;

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
    iget-object v2, p0, Lcom/boJUF/mB/mB/pO/Xd/tP/uI;->Lx:Lcom/boJUF/mB/mB/pO/Xd/mB/uI;

    invoke-virtual {p1}, Lcom/boJUF/mB/mB/pO/mB/Vr;->TP()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/boJUF/mB/mB/pO/Xd/mB/uI;->cp(Ljava/lang/String;)Z

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

.method private LA([Ljava/lang/String;I)V
    .locals 6

    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v2, p1, v0

    new-instance v3, Lcom/boJUF/mB/mB/mB/oC;

    invoke-direct {v3}, Lcom/boJUF/mB/mB/mB/oC;-><init>()V

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Lcom/boJUF/mB/mB/mB/oC;->On(I)V

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "http://"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/boJUF/mB/mB/mB/oC;->LA(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Lcom/boJUF/mB/mB/mB/oC;->cp(I)V

    iget-object v2, p0, Lcom/boJUF/mB/mB/pO/Xd/tP/uI;->VY:Lcom/boJUF/mB/mB/Xd/uI;

    invoke-virtual {v2, v3}, Lcom/boJUF/mB/mB/Xd/uI;->LA(Lcom/boJUF/mB/mB/mB/oC;)J

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private On(I)Lcom/boJUF/mB/mB/mB/oC;
    .locals 12

    const/4 v11, 0x2

    const/4 v1, 0x1

    const/4 v10, 0x0

    iget-object v0, p0, Lcom/boJUF/mB/mB/pO/Xd/tP/uI;->VY:Lcom/boJUF/mB/mB/Xd/uI;

    invoke-virtual {v0, v1}, Lcom/boJUF/mB/mB/Xd/uI;->cp(I)Lcom/boJUF/mB/mB/mB/oC;

    move-result-object v2

    if-nez v2, :cond_0

    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lcom/boJUF/mB/mB/pO/Xd/tP/uI;->TP(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iget-object v0, p0, Lcom/boJUF/mB/mB/pO/Xd/tP/uI;->Lx:Lcom/boJUF/mB/mB/pO/Xd/mB/uI;

    invoke-virtual {v0}, Lcom/boJUF/mB/mB/pO/Xd/mB/uI;->LA()Ljava/util/Map;

    move-result-object v0

    const-string v1, "msa"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/boJUF/mB/mB/pO/Xd/tP/uI;->Lx:Lcom/boJUF/mB/mB/pO/Xd/mB/uI;

    invoke-virtual {v1}, Lcom/boJUF/mB/mB/pO/Xd/mB/uI;->LA()Ljava/util/Map;

    move-result-object v1

    const-string v5, "cha"

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v5, p0, Lcom/boJUF/mB/mB/pO/Xd/tP/uI;->Lx:Lcom/boJUF/mB/mB/pO/Xd/mB/uI;

    const-string v6, "HttpRequester"

    invoke-virtual {v5, v6}, Lcom/boJUF/mB/mB/pO/Xd/mB/uI;->LA(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Lcom/boJUF/mB/mB/tP/mB/uI;->LA()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/boJUF/mB/mB/pO/tP/XQ;->LA(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-static {v7, v11}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v7

    invoke-direct {v8, v7}, Ljava/lang/String;-><init>([B)V

    const-string v7, "msa"

    invoke-interface {v4, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "cha"

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "ver"

    invoke-interface {v4, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "tp"

    invoke-interface {v4, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "sign"

    invoke-interface {v4, v0, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v0, v10, [Ljava/util/Map;

    invoke-static {v3, v4, v0}, Lcom/boJUF/mB/mB/mB/oC;->LA(Ljava/lang/String;Ljava/util/Map;[Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ERROR"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    :try_start_0
    new-instance v1, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v3, 0x0

    invoke-static {v0, v3}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "Log"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "Pay"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x2

    invoke-direct {p0, v1, v3}, Lcom/boJUF/mB/mB/pO/Xd/tP/uI;->LA([Ljava/lang/String;I)V

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/boJUF/mB/mB/pO/Xd/tP/uI;->LA([Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-object v2

    :catch_0
    move-exception v0

    sget-object v0, Lcom/boJUF/mB/mB/tP/uI;->u:Ljava/lang/String;

    goto :goto_0
.end method

.method private TP(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/boJUF/mB/mB/pO/Xd/tP/uI;->VY:Lcom/boJUF/mB/mB/Xd/uI;

    invoke-virtual {v0, p1}, Lcom/boJUF/mB/mB/Xd/uI;->On(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final LA(Lcom/boJUF/mB/mB/pO/mB/Vr;)V
    .locals 5

    :try_start_0
    invoke-static {p1}, Lcom/boJUF/mB/mB/mB/oC;->LA(Lcom/boJUF/mB/mB/pO/mB/Vr;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "\"resultCode\":1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    sget-object v0, Lcom/boJUF/mB/mB/tP/uI;->o:Ljava/lang/String;

    iget-object v0, p0, Lcom/boJUF/mB/mB/pO/Xd/tP/uI;->Lx:Lcom/boJUF/mB/mB/pO/Xd/mB/uI;

    invoke-virtual {p1}, Lcom/boJUF/mB/mB/pO/mB/Vr;->On()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/boJUF/mB/mB/pO/Xd/mB/uI;->LA(II)V

    iget-object v0, p0, Lcom/boJUF/mB/mB/pO/Xd/tP/uI;->Lx:Lcom/boJUF/mB/mB/pO/Xd/mB/uI;

    invoke-virtual {p1}, Lcom/boJUF/mB/mB/pO/mB/Vr;->TP()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/boJUF/mB/mB/pO/mB/Vr;->na()I

    move-result v2

    const/4 v3, 0x4

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/boJUF/mB/mB/pO/Xd/mB/uI;->LA(Ljava/lang/String;III)Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "SOID"

    invoke-virtual {p1}, Lcom/boJUF/mB/mB/pO/mB/Vr;->TP()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "TID"

    invoke-virtual {p1}, Lcom/boJUF/mB/mB/pO/mB/Vr;->na()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "flag"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0xc81

    iget-object v2, p0, Lcom/boJUF/mB/mB/pO/Xd/tP/uI;->IL:Landroid/content/Context;

    invoke-static {v1, v0, v2}, Lcom/boJUF/mB/mB/pO/tP/tQ;->LA(ILjava/util/HashMap;Landroid/content/Context;)Z

    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/boJUF/mB/mB/tP/uI;->p:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "SOID"

    invoke-virtual {p1}, Lcom/boJUF/mB/mB/pO/mB/Vr;->TP()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "TID"

    invoke-virtual {p1}, Lcom/boJUF/mB/mB/pO/mB/Vr;->na()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "flag"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0xc81

    iget-object v2, p0, Lcom/boJUF/mB/mB/pO/Xd/tP/uI;->IL:Landroid/content/Context;

    invoke-static {v1, v0, v2}, Lcom/boJUF/mB/mB/pO/tP/tQ;->LA(ILjava/util/HashMap;Landroid/content/Context;)Z

    iget-object v0, p0, Lcom/boJUF/mB/mB/pO/Xd/tP/uI;->Lx:Lcom/boJUF/mB/mB/pO/Xd/mB/uI;

    invoke-virtual {p1}, Lcom/boJUF/mB/mB/pO/mB/Vr;->On()I

    move-result v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/boJUF/mB/mB/pO/Xd/mB/uI;->LA(II)V

    iget-object v0, p0, Lcom/boJUF/mB/mB/pO/Xd/tP/uI;->Lx:Lcom/boJUF/mB/mB/pO/Xd/mB/uI;

    invoke-virtual {p1}, Lcom/boJUF/mB/mB/pO/mB/Vr;->TP()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/boJUF/mB/mB/pO/mB/Vr;->na()I

    move-result v2

    const/4 v3, 0x4

    const/4 v4, 0x2

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/boJUF/mB/mB/pO/Xd/mB/uI;->LA(Ljava/lang/String;III)Z

    const/4 v0, 0x0

    const/16 v1, 0x840

    invoke-direct {p0, p1, v0, v1}, Lcom/boJUF/mB/mB/pO/Xd/tP/uI;->LA(Lcom/boJUF/mB/mB/pO/mB/Vr;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public final LA(Lcom/boJUF/mB/mB/pO/mB/Vr;I)V
    .locals 6

    const/4 v4, 0x1

    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0, v0}, Lcom/boJUF/mB/mB/pO/Xd/tP/uI;->On(I)Lcom/boJUF/mB/mB/mB/oC;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    const/16 v1, 0x846

    invoke-direct {p0, p1, v0, v1}, Lcom/boJUF/mB/mB/pO/Xd/tP/uI;->LA(Lcom/boJUF/mB/mB/pO/mB/Vr;II)V

    sget-object v0, Lcom/boJUF/mB/mB/tP/uI;->q:Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/boJUF/mB/mB/mB/oC;->cp()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x3

    invoke-direct {p0, v2}, Lcom/boJUF/mB/mB/pO/Xd/tP/uI;->TP(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v3, "fullApi"

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "body"

    invoke-virtual {p1}, Lcom/boJUF/mB/mB/pO/mB/Vr;->VY()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "soid"

    invoke-virtual {p1}, Lcom/boJUF/mB/mB/pO/mB/Vr;->TP()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "domainId"

    invoke-virtual {v0}, Lcom/boJUF/mB/mB/mB/oC;->LA()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/boJUF/mB/mB/pO/Xd/tP/uI;->Lx:Lcom/boJUF/mB/mB/pO/Xd/mB/uI;

    const/4 v1, 0x2

    iget-object v3, p0, Lcom/boJUF/mB/mB/pO/Xd/tP/uI;->IL:Landroid/content/Context;

    invoke-static {v0, v2, v1, v3}, Lcom/boJUF/mB/mB/mB/oC;->LA(Lcom/boJUF/mB/mB/pO/Xd/mB/uI;Ljava/util/HashMap;ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ERROR"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    if-nez v1, :cond_3

    if-eqz v0, :cond_3

    :try_start_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "resultCode"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v4, :cond_2

    sget-object v0, Lcom/boJUF/mB/mB/tP/uI;->s:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v2, "SOID"

    invoke-virtual {p1}, Lcom/boJUF/mB/mB/pO/mB/Vr;->TP()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "TID"

    invoke-virtual {p1}, Lcom/boJUF/mB/mB/pO/mB/Vr;->na()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "flag"

    const-string v3, "2"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0xce6

    iget-object v3, p0, Lcom/boJUF/mB/mB/pO/Xd/tP/uI;->IL:Landroid/content/Context;

    invoke-static {v2, v0, v3}, Lcom/boJUF/mB/mB/pO/tP/tQ;->LA(ILjava/util/HashMap;Landroid/content/Context;)Z

    iget-object v0, p0, Lcom/boJUF/mB/mB/pO/Xd/tP/uI;->Lx:Lcom/boJUF/mB/mB/pO/Xd/mB/uI;

    invoke-virtual {p1}, Lcom/boJUF/mB/mB/pO/mB/Vr;->On()I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Lcom/boJUF/mB/mB/pO/Xd/mB/uI;->LA(II)V

    iget-object v0, p0, Lcom/boJUF/mB/mB/pO/Xd/tP/uI;->Lx:Lcom/boJUF/mB/mB/pO/Xd/mB/uI;

    invoke-virtual {p1}, Lcom/boJUF/mB/mB/pO/mB/Vr;->TP()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/boJUF/mB/mB/pO/mB/Vr;->na()I

    move-result v3

    const/4 v4, 0x4

    const/4 v5, 0x1

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/boJUF/mB/mB/pO/Xd/mB/uI;->LA(Ljava/lang/String;III)Z

    new-instance v0, Lcom/boJUF/mB/mB/pO/mB/Ut;

    invoke-direct {v0}, Lcom/boJUF/mB/mB/pO/mB/Ut;-><init>()V

    const-string v2, "data"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "soid"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "tks"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "[]"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v0, 0x1

    const/16 v1, 0x3ea

    invoke-direct {p0, p1, v0, v1}, Lcom/boJUF/mB/mB/pO/Xd/tP/uI;->LA(Lcom/boJUF/mB/mB/pO/mB/Vr;II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    sget-object v0, Lcom/boJUF/mB/mB/tP/uI;->t:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    :cond_1
    :try_start_3
    invoke-virtual {v0, v1}, Lcom/boJUF/mB/mB/pO/mB/Ut;->cp(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/boJUF/mB/mB/pO/mB/Vr;->na()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/boJUF/mB/mB/pO/mB/Ut;->LA(I)V

    invoke-virtual {v0, v2}, Lcom/boJUF/mB/mB/pO/mB/Ut;->On(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/boJUF/mB/mB/pO/mB/Ut;->On(I)V

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/boJUF/mB/mB/pO/mB/Ut;->TP(I)V

    iget-object v2, p0, Lcom/boJUF/mB/mB/pO/Xd/tP/uI;->VY:Lcom/boJUF/mB/mB/Xd/uI;

    invoke-virtual {v2, v1}, Lcom/boJUF/mB/mB/Xd/uI;->bh(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/boJUF/mB/mB/pO/mB/Ut;->LA(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/boJUF/mB/mB/pO/Xd/tP/uI;->Lx:Lcom/boJUF/mB/mB/pO/Xd/mB/uI;

    invoke-virtual {v1, v0}, Lcom/boJUF/mB/mB/pO/Xd/mB/uI;->LA(Lcom/boJUF/mB/mB/pO/mB/Ut;)V

    iget-object v0, p0, Lcom/boJUF/mB/mB/pO/Xd/tP/uI;->IL:Landroid/content/Context;

    invoke-static {v0}, Lcom/boJUF/mB/mB/pO/ek/mB/uI;->LA(Landroid/content/Context;)Lcom/boJUF/mB/mB/pO/ek/mB/uI;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/boJUF/mB/mB/pO/ek/mB/uI;->LA(I)V

    goto/16 :goto_0

    :cond_2
    sget-object v0, Lcom/boJUF/mB/mB/tP/uI;->r:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "SOID"

    invoke-virtual {p1}, Lcom/boJUF/mB/mB/pO/mB/Vr;->TP()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "TID"

    invoke-virtual {p1}, Lcom/boJUF/mB/mB/pO/mB/Vr;->na()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "flag"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0xce6

    iget-object v2, p0, Lcom/boJUF/mB/mB/pO/Xd/tP/uI;->IL:Landroid/content/Context;

    invoke-static {v1, v0, v2}, Lcom/boJUF/mB/mB/pO/tP/tQ;->LA(ILjava/util/HashMap;Landroid/content/Context;)Z

    iget-object v0, p0, Lcom/boJUF/mB/mB/pO/Xd/tP/uI;->Lx:Lcom/boJUF/mB/mB/pO/Xd/mB/uI;

    invoke-virtual {p1}, Lcom/boJUF/mB/mB/pO/mB/Vr;->On()I

    move-result v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/boJUF/mB/mB/pO/Xd/mB/uI;->LA(II)V

    iget-object v0, p0, Lcom/boJUF/mB/mB/pO/Xd/tP/uI;->Lx:Lcom/boJUF/mB/mB/pO/Xd/mB/uI;

    invoke-virtual {p1}, Lcom/boJUF/mB/mB/pO/mB/Vr;->TP()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/boJUF/mB/mB/pO/mB/Vr;->na()I

    move-result v2

    const/4 v3, 0x4

    const/4 v4, 0x2

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/boJUF/mB/mB/pO/Xd/mB/uI;->LA(Ljava/lang/String;III)Z

    const/4 v0, 0x0

    const/16 v1, 0x841

    invoke-direct {p0, p1, v0, v1}, Lcom/boJUF/mB/mB/pO/Xd/tP/uI;->LA(Lcom/boJUF/mB/mB/pO/mB/Vr;II)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    :cond_3
    :try_start_4
    sget-object v0, Lcom/boJUF/mB/mB/tP/uI;->r:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "SOID"

    invoke-virtual {p1}, Lcom/boJUF/mB/mB/pO/mB/Vr;->TP()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "TID"

    invoke-virtual {p1}, Lcom/boJUF/mB/mB/pO/mB/Vr;->na()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "flag"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0xce6

    iget-object v2, p0, Lcom/boJUF/mB/mB/pO/Xd/tP/uI;->IL:Landroid/content/Context;

    invoke-static {v1, v0, v2}, Lcom/boJUF/mB/mB/pO/tP/tQ;->LA(ILjava/util/HashMap;Landroid/content/Context;)Z

    iget-object v0, p0, Lcom/boJUF/mB/mB/pO/Xd/tP/uI;->Lx:Lcom/boJUF/mB/mB/pO/Xd/mB/uI;

    invoke-virtual {p1}, Lcom/boJUF/mB/mB/pO/mB/Vr;->On()I

    move-result v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/boJUF/mB/mB/pO/Xd/mB/uI;->LA(II)V

    iget-object v0, p0, Lcom/boJUF/mB/mB/pO/Xd/tP/uI;->Lx:Lcom/boJUF/mB/mB/pO/Xd/mB/uI;

    invoke-virtual {p1}, Lcom/boJUF/mB/mB/pO/mB/Vr;->TP()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/boJUF/mB/mB/pO/mB/Vr;->na()I

    move-result v2

    const/4 v3, 0x4

    const/4 v4, 0x2

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/boJUF/mB/mB/pO/Xd/mB/uI;->LA(Ljava/lang/String;III)Z

    const/4 v0, 0x0

    const/16 v1, 0x841

    invoke-direct {p0, p1, v0, v1}, Lcom/boJUF/mB/mB/pO/Xd/tP/uI;->LA(Lcom/boJUF/mB/mB/pO/mB/Vr;II)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0
.end method

.method public final cp(I)V
    .locals 2

    sget-object v0, Lcom/boJUF/mB/mB/tP/uI;->e:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/boJUF/mB/mB/pO/Xd/tP/uI;->cp()V

    sget-object v0, Lcom/boJUF/mB/mB/pO/Xd/tP/uI;->TP:Landroid/os/Handler;

    new-instance v1, Lcom/boJUF/mB/mB/pO/Xd/tP/oC;

    invoke-direct {v1, p0, p1}, Lcom/boJUF/mB/mB/pO/Xd/tP/oC;-><init>(Lcom/boJUF/mB/mB/pO/Xd/tP/uI;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
