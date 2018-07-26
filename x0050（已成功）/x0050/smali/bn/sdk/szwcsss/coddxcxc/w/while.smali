.class public Lbn/sdk/szwcsss/coddxcxc/w/while;
.super Ljava/lang/Object;

# interfaces
.implements Lbn/sdk/szwcsss/coddxcxc/y/cx;


# static fields
.field private static hh:I


# instance fields
.field private a:Ljava/lang/String;

.field public aa:I

.field public b:I

.field public cx:Ljava/lang/String;

.field public for:I

.field private gg:Ljava/util/List;

.field private implements:Ljava/lang/String;

.field private import:I

.field private instanceof:I

.field private native:I

.field private private:Ljava/lang/String;

.field private return:I

.field private sadfsaf:I

.field private safdasfs:I

.field private sdfsf:I

.field private static:Ljava/lang/String;

.field private synchronized:I

.field public throw:I

.field private transient:I

.field private while:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lbn/sdk/szwcsss/coddxcxc/w/while;->hh:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lbn/sdk/szwcsss/coddxcxc/w/while;->b:I

    iput v1, p0, Lbn/sdk/szwcsss/coddxcxc/w/while;->for:I

    iput v1, p0, Lbn/sdk/szwcsss/coddxcxc/w/while;->aa:I

    const/4 v0, 0x2

    iput v0, p0, Lbn/sdk/szwcsss/coddxcxc/w/while;->throw:I

    const-string v0, ""

    iput-object v0, p0, Lbn/sdk/szwcsss/coddxcxc/w/while;->while:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lbn/sdk/szwcsss/coddxcxc/w/while;->private:Ljava/lang/String;

    iput v1, p0, Lbn/sdk/szwcsss/coddxcxc/w/while;->transient:I

    const-string v0, ""

    iput-object v0, p0, Lbn/sdk/szwcsss/coddxcxc/w/while;->implements:Ljava/lang/String;

    iput v1, p0, Lbn/sdk/szwcsss/coddxcxc/w/while;->instanceof:I

    iput v1, p0, Lbn/sdk/szwcsss/coddxcxc/w/while;->synchronized:I

    iput v1, p0, Lbn/sdk/szwcsss/coddxcxc/w/while;->sdfsf:I

    const-string v0, ""

    iput-object v0, p0, Lbn/sdk/szwcsss/coddxcxc/w/while;->a:Ljava/lang/String;

    iput v1, p0, Lbn/sdk/szwcsss/coddxcxc/w/while;->import:I

    iput v1, p0, Lbn/sdk/szwcsss/coddxcxc/w/while;->native:I

    iput v1, p0, Lbn/sdk/szwcsss/coddxcxc/w/while;->safdasfs:I

    iput v1, p0, Lbn/sdk/szwcsss/coddxcxc/w/while;->return:I

    const-string v0, ""

    iput-object v0, p0, Lbn/sdk/szwcsss/coddxcxc/w/while;->static:Ljava/lang/String;

    iput v1, p0, Lbn/sdk/szwcsss/coddxcxc/w/while;->sadfsaf:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbn/sdk/szwcsss/coddxcxc/w/while;->gg:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lbn/sdk/szwcsss/coddxcxc/w/while;->instanceof:I

    return v0
.end method

.method public aa()I
    .locals 1

    iget v0, p0, Lbn/sdk/szwcsss/coddxcxc/w/while;->for:I

    return v0
.end method

.method public b(Ljava/lang/String;)Ljava/util/List;
    .locals 10

    const/4 v9, 0x1

    const/4 v2, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initServerDjSort djSort:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lbn/sdk/szwcsss/coddxcxc/y/throw;->cx(Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    return-object v0

    :cond_1
    const-string v1, ","

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    move v1, v2

    :goto_0
    if-ge v1, v4, :cond_0

    aget-object v5, v3, v1

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    aget-object v6, v5, v2

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    aget-object v5, v5, v9

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    new-instance v7, Lbn/sdk/szwcsss/coddxcxc/w/implements;

    invoke-direct {v7, v6, v5}, Lbn/sdk/szwcsss/coddxcxc/w/implements;-><init>(II)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v5, "initServerDjSort payId%s"

    new-array v7, v9, [Ljava/lang/Object;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ""

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v7, v2

    invoke-static {v5, v7}, Lbn/sdk/szwcsss/coddxcxc/y/throw;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public b(Lorg/json/JSONObject;)V
    .locals 6

    const/4 v2, -0x1

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    const-string v3, "a"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v0

    :goto_1
    iput v3, p0, Lbn/sdk/szwcsss/coddxcxc/w/while;->b:I

    const-string v3, "b"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v3, v0

    :goto_2
    iput v3, p0, Lbn/sdk/szwcsss/coddxcxc/w/while;->for:I

    const-string v3, "c"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x0

    :goto_3
    iput-object v3, p0, Lbn/sdk/szwcsss/coddxcxc/w/while;->cx:Ljava/lang/String;

    const-string v3, "d"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    move v3, v2

    :goto_4
    iput v3, p0, Lbn/sdk/szwcsss/coddxcxc/w/while;->aa:I

    const-string v3, "e"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    :goto_5
    iput v2, p0, Lbn/sdk/szwcsss/coddxcxc/w/while;->throw:I

    const-string v2, "f"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, ""

    move-object v3, v2

    :goto_6
    const-string v2, "g"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    const-string v2, ""

    :goto_7
    iput-object v2, p0, Lbn/sdk/szwcsss/coddxcxc/w/while;->while:Ljava/lang/String;

    const-string v2, "h"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    const-string v2, ""

    :goto_8
    iput-object v2, p0, Lbn/sdk/szwcsss/coddxcxc/w/while;->private:Ljava/lang/String;

    const-string v2, "i"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    move v2, v0

    :goto_9
    iput v2, p0, Lbn/sdk/szwcsss/coddxcxc/w/while;->transient:I

    const-string v2, "j"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    const-string v2, ""

    :goto_a
    iput-object v2, p0, Lbn/sdk/szwcsss/coddxcxc/w/while;->implements:Ljava/lang/String;

    const-string v2, "k"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    move v2, v0

    :goto_b
    iput v2, p0, Lbn/sdk/szwcsss/coddxcxc/w/while;->instanceof:I

    const-string v2, "l"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    :goto_c
    iput v1, p0, Lbn/sdk/szwcsss/coddxcxc/w/while;->synchronized:I

    const-string v1, "m"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    move v1, v0

    :goto_d
    iput v1, p0, Lbn/sdk/szwcsss/coddxcxc/w/while;->sdfsf:I

    const-string v1, "n"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    const-string v1, ""

    :goto_e
    iput-object v1, p0, Lbn/sdk/szwcsss/coddxcxc/w/while;->a:Ljava/lang/String;

    const-string v1, "o"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    move v1, v0

    :goto_f
    iput v1, p0, Lbn/sdk/szwcsss/coddxcxc/w/while;->import:I

    const-string v1, "p"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    move v1, v0

    :goto_10
    iput v1, p0, Lbn/sdk/szwcsss/coddxcxc/w/while;->native:I

    const-string v1, "q"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    move v1, v0

    :goto_11
    iput v1, p0, Lbn/sdk/szwcsss/coddxcxc/w/while;->safdasfs:I

    const-string v1, "r"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    move v1, v0

    :goto_12
    iput v1, p0, Lbn/sdk/szwcsss/coddxcxc/w/while;->return:I

    const-string v1, "s"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    const-string v1, ""

    :goto_13
    iput-object v1, p0, Lbn/sdk/szwcsss/coddxcxc/w/while;->static:Ljava/lang/String;

    const-string v1, "t"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_14

    :goto_14
    iput v0, p0, Lbn/sdk/szwcsss/coddxcxc/w/while;->sadfsaf:I

    const-string v0, "crackMMFlag:%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, p0, Lbn/sdk/szwcsss/coddxcxc/w/while;->transient:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {v0, v1}, Lbn/sdk/szwcsss/coddxcxc/y/throw;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "payEnableFlag:%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, p0, Lbn/sdk/szwcsss/coddxcxc/w/while;->synchronized:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {v0, v1}, Lbn/sdk/szwcsss/coddxcxc/y/throw;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "payRetryCounts:%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, p0, Lbn/sdk/szwcsss/coddxcxc/w/while;->sdfsf:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {v0, v1}, Lbn/sdk/szwcsss/coddxcxc/y/throw;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "payTipText:%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lbn/sdk/szwcsss/coddxcxc/w/while;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {v0, v1}, Lbn/sdk/szwcsss/coddxcxc/y/throw;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "needLogFile:%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, p0, Lbn/sdk/szwcsss/coddxcxc/w/while;->import:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {v0, v1}, Lbn/sdk/szwcsss/coddxcxc/y/throw;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "mobileDataDlg:%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, p0, Lbn/sdk/szwcsss/coddxcxc/w/while;->native:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {v0, v1}, Lbn/sdk/szwcsss/coddxcxc/y/throw;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "zyRetryCounts:%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, p0, Lbn/sdk/szwcsss/coddxcxc/w/while;->return:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {v0, v1}, Lbn/sdk/szwcsss/coddxcxc/y/throw;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "payRetryPids:%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lbn/sdk/szwcsss/coddxcxc/w/while;->static:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {v0, v1}, Lbn/sdk/szwcsss/coddxcxc/y/throw;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "payRetryTotalCounts:%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, p0, Lbn/sdk/szwcsss/coddxcxc/w/while;->sadfsaf:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {v0, v1}, Lbn/sdk/szwcsss/coddxcxc/y/throw;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, v3}, Lbn/sdk/szwcsss/coddxcxc/w/while;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lbn/sdk/szwcsss/coddxcxc/w/while;->gg:Ljava/util/List;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_0

    :cond_1
    :try_start_1
    const-string v3, "a"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    goto/16 :goto_1

    :cond_2
    const-string v3, "b"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    goto/16 :goto_2

    :cond_3
    const-string v3, "c"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_3

    :cond_4
    const-string v3, "d"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    goto/16 :goto_4

    :cond_5
    const-string v2, "e"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    goto/16 :goto_5

    :cond_6
    const-string v2, "f"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    goto/16 :goto_6

    :cond_7
    const-string v2, "g"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_7

    :cond_8
    const-string v2, "h"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_8

    :cond_9
    const-string v2, "i"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    goto/16 :goto_9

    :cond_a
    const-string v2, "j"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_a

    :cond_b
    const-string v2, "k"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    goto/16 :goto_b

    :cond_c
    const-string v1, "l"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    goto/16 :goto_c

    :cond_d
    const-string v1, "m"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    goto/16 :goto_d

    :cond_e
    const-string v1, "n"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_e

    :cond_f
    const-string v1, "o"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    goto/16 :goto_f

    :cond_10
    const-string v1, "p"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    goto/16 :goto_10

    :cond_11
    const-string v1, "q"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    goto/16 :goto_11

    :cond_12
    const-string v1, "r"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    goto/16 :goto_12

    :cond_13
    const-string v1, "s"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_13

    :cond_14
    const-string v0, "t"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    goto/16 :goto_14
.end method

.method public b()Z
    .locals 1

    iget v0, p0, Lbn/sdk/szwcsss/coddxcxc/w/while;->b:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public cx()I
    .locals 1

    iget v0, p0, Lbn/sdk/szwcsss/coddxcxc/w/while;->b:I

    return v0
.end method

.method public for()Ljava/lang/String;
    .locals 1

    const-string v0, "c"

    return-object v0
.end method

.method public gg()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lbn/sdk/szwcsss/coddxcxc/w/while;->static:Ljava/lang/String;

    return-object v0
.end method

.method public hh()I
    .locals 1

    iget v0, p0, Lbn/sdk/szwcsss/coddxcxc/w/while;->sadfsaf:I

    return v0
.end method

.method public implements()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lbn/sdk/szwcsss/coddxcxc/w/while;->while:Ljava/lang/String;

    return-object v0
.end method

.method public import()I
    .locals 1

    iget v0, p0, Lbn/sdk/szwcsss/coddxcxc/w/while;->sdfsf:I

    return v0
.end method

.method public instanceof()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lbn/sdk/szwcsss/coddxcxc/w/while;->private:Ljava/lang/String;

    return-object v0
.end method

.method public native()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lbn/sdk/szwcsss/coddxcxc/w/while;->a:Ljava/lang/String;

    return-object v0
.end method

.method public private()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lbn/sdk/szwcsss/coddxcxc/w/while;->cx:Ljava/lang/String;

    return-object v0
.end method

.method public return()I
    .locals 1

    iget v0, p0, Lbn/sdk/szwcsss/coddxcxc/w/while;->native:I

    return v0
.end method

.method public sadfsaf()I
    .locals 1

    iget v0, p0, Lbn/sdk/szwcsss/coddxcxc/w/while;->return:I

    return v0
.end method

.method public safdasfs()I
    .locals 1

    iget v0, p0, Lbn/sdk/szwcsss/coddxcxc/w/while;->import:I

    return v0
.end method

.method public sdfsf()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lbn/sdk/szwcsss/coddxcxc/w/while;->implements:Ljava/lang/String;

    return-object v0
.end method

.method public static()I
    .locals 1

    iget v0, p0, Lbn/sdk/szwcsss/coddxcxc/w/while;->safdasfs:I

    return v0
.end method

.method public synchronized()I
    .locals 1

    iget v0, p0, Lbn/sdk/szwcsss/coddxcxc/w/while;->transient:I

    return v0
.end method

.method public throw()I
    .locals 1

    iget v0, p0, Lbn/sdk/szwcsss/coddxcxc/w/while;->aa:I

    if-gez v0, :cond_0

    sget v0, Lbn/sdk/szwcsss/coddxcxc/w/while;->hh:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lbn/sdk/szwcsss/coddxcxc/w/while;->aa:I

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ResutOfInit [pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lbn/sdk/szwcsss/coddxcxc/w/while;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", pinfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lbn/sdk/szwcsss/coddxcxc/w/while;->cx:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public transient()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lbn/sdk/szwcsss/coddxcxc/w/while;->gg:Ljava/util/List;

    return-object v0
.end method

.method public while()I
    .locals 1

    iget v0, p0, Lbn/sdk/szwcsss/coddxcxc/w/while;->throw:I

    if-gez v0, :cond_0

    const/4 v0, 0x2

    iput v0, p0, Lbn/sdk/szwcsss/coddxcxc/w/while;->throw:I

    :cond_0
    iget v0, p0, Lbn/sdk/szwcsss/coddxcxc/w/while;->throw:I

    return v0
.end method
