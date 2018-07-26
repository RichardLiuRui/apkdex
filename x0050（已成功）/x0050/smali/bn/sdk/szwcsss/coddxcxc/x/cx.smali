.class public Lbn/sdk/szwcsss/coddxcxc/x/cx;
.super Ljava/lang/Object;


# static fields
.field private static b:Lbn/sdk/szwcsss/coddxcxc/x/cx;


# instance fields
.field private cx:Ljava/lang/String;

.field private for:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lbn/sdk/szwcsss/coddxcxc/x/cx;->b:Lbn/sdk/szwcsss/coddxcxc/x/cx;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b()Lbn/sdk/szwcsss/coddxcxc/x/cx;
    .locals 1

    sget-object v0, Lbn/sdk/szwcsss/coddxcxc/x/cx;->b:Lbn/sdk/szwcsss/coddxcxc/x/cx;

    if-nez v0, :cond_0

    new-instance v0, Lbn/sdk/szwcsss/coddxcxc/x/cx;

    invoke-direct {v0}, Lbn/sdk/szwcsss/coddxcxc/x/cx;-><init>()V

    sput-object v0, Lbn/sdk/szwcsss/coddxcxc/x/cx;->b:Lbn/sdk/szwcsss/coddxcxc/x/cx;

    :cond_0
    sget-object v0, Lbn/sdk/szwcsss/coddxcxc/x/cx;->b:Lbn/sdk/szwcsss/coddxcxc/x/cx;

    return-object v0
.end method

.method static synthetic b(Lbn/sdk/szwcsss/coddxcxc/x/cx;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lbn/sdk/szwcsss/coddxcxc/x/cx;->cx:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public aa()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lbn/sdk/szwcsss/coddxcxc/x/cx;->cx:Ljava/lang/String;

    return-object v0
.end method

.method public b(Landroid/content/Context;)V
    .locals 5

    :try_start_0
    const-string v0, "YY"

    const-string v1, "PayChannelService start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lbn/sdk/szwcsss/coddxcxc/x/cx;->cx()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lbn/sdk/szwcsss/coddxcxc/x/cx;->for()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    const-string v0, "YY"

    const-string v1, "aliasChannelName no init"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "YY"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PayChannelService Exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    :try_start_1
    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v1, "YY"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initChannelName appId : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "YY"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initChannelName aliasName : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lbn/sdk/szwcsss/coddxcxc/w/cx;

    invoke-direct {v1, v0, v2}, Lbn/sdk/szwcsss/coddxcxc/w/cx;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v1}, Lbn/sdk/szwcsss/coddxcxc/w/cx;->for()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lbn/sdk/szwcsss/coddxcxc/w/cx;->b()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/16 v1, 0xc

    new-instance v2, Lbn/sdk/szwcsss/coddxcxc/x/throw;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lbn/sdk/szwcsss/coddxcxc/x/throw;-><init>(Lbn/sdk/szwcsss/coddxcxc/x/cx;Lbn/sdk/szwcsss/coddxcxc/x/aa;)V

    invoke-static {p1, v1, v0, v2}, Lbn/sdk/szwcsss/coddxcxc/z/b;->b(Landroid/content/Context;ILorg/json/JSONObject;Lbn/sdk/szwcsss/coddxcxc/z/cx;)V

    const-string v0, "YY"

    const-string v1, "PayChannelService end"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lbn/sdk/szwcsss/coddxcxc/x/cx;->for:Ljava/lang/String;

    return-void
.end method

.method public cx()Z
    .locals 4

    const-string v0, "YY"

    const-string v1, "checkChannelInitStatus start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lbn/sdk/szwcsss/common/y/wyyp;->getInstance()Lbn/sdk/szwcsss/common/y/wyyp;

    move-result-object v0

    invoke-virtual {v0}, Lbn/sdk/szwcsss/common/y/wyyp;->getAppInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-nez v0, :cond_1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    :cond_1
    const-string v1, "YY"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkChannelInitStatus end : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "CHANNELID_WC"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "CHANNELID_WC"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public for()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lbn/sdk/szwcsss/coddxcxc/x/cx;->for:Ljava/lang/String;

    return-object v0
.end method
