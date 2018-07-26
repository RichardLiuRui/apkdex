.class public Lbn/sdk/szwcsss/coddxcxc/v/b;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private final aa:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final cx:Ljava/lang/String;

.field private final for:Ljava/lang/String;

.field private implements:Ljava/lang/String;

.field private instanceof:Ljava/lang/String;

.field private final private:Ljava/lang/String;

.field private sdfsf:Ljava/lang/String;

.field private synchronized:Ljava/lang/String;

.field private final throw:Ljava/lang/String;

.field private transient:Ljava/lang/String;

.field private final while:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "#*#"

    iput-object v0, p0, Lbn/sdk/szwcsss/coddxcxc/v/b;->b:Ljava/lang/String;

    const-string v0, "key"

    iput-object v0, p0, Lbn/sdk/szwcsss/coddxcxc/v/b;->for:Ljava/lang/String;

    const-string v0, "price"

    iput-object v0, p0, Lbn/sdk/szwcsss/coddxcxc/v/b;->cx:Ljava/lang/String;

    const-string v0, "name"

    iput-object v0, p0, Lbn/sdk/szwcsss/coddxcxc/v/b;->aa:Ljava/lang/String;

    const-string v0, "num"

    iput-object v0, p0, Lbn/sdk/szwcsss/coddxcxc/v/b;->throw:Ljava/lang/String;

    const-string v0, "desc"

    iput-object v0, p0, Lbn/sdk/szwcsss/coddxcxc/v/b;->while:Ljava/lang/String;

    const-string v0, "code"

    iput-object v0, p0, Lbn/sdk/szwcsss/coddxcxc/v/b;->private:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lbn/sdk/szwcsss/coddxcxc/v/b;->transient:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lbn/sdk/szwcsss/coddxcxc/v/b;->implements:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lbn/sdk/szwcsss/coddxcxc/v/b;->instanceof:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lbn/sdk/szwcsss/coddxcxc/v/b;->synchronized:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lbn/sdk/szwcsss/coddxcxc/v/b;->sdfsf:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lbn/sdk/szwcsss/coddxcxc/v/b;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public aa()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lbn/sdk/szwcsss/coddxcxc/v/b;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b(Lorg/json/JSONObject;)V
    .locals 1

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    const-string v0, "key"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, ""

    :goto_1
    iput-object v0, p0, Lbn/sdk/szwcsss/coddxcxc/v/b;->transient:Ljava/lang/String;

    const-string v0, "price"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, ""

    :goto_2
    iput-object v0, p0, Lbn/sdk/szwcsss/coddxcxc/v/b;->implements:Ljava/lang/String;

    const-string v0, "name"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, ""

    :goto_3
    iput-object v0, p0, Lbn/sdk/szwcsss/coddxcxc/v/b;->instanceof:Ljava/lang/String;

    const-string v0, "num"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, ""

    :goto_4
    iput-object v0, p0, Lbn/sdk/szwcsss/coddxcxc/v/b;->synchronized:Ljava/lang/String;

    const-string v0, "desc"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, ""

    :goto_5
    iput-object v0, p0, Lbn/sdk/szwcsss/coddxcxc/v/b;->sdfsf:Ljava/lang/String;

    const-string v0, "code"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, ""

    :goto_6
    iput-object v0, p0, Lbn/sdk/szwcsss/coddxcxc/v/b;->a:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    :cond_1
    :try_start_1
    const-string v0, "key"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    const-string v0, "price"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_3
    const-string v0, "name"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_4
    const-string v0, "num"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_5
    const-string v0, "desc"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    :cond_6
    const-string v0, "code"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_6
.end method

.method public b()Z
    .locals 1

    iget-object v0, p0, Lbn/sdk/szwcsss/coddxcxc/v/b;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbn/sdk/szwcsss/coddxcxc/v/b;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public cx()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lbn/sdk/szwcsss/coddxcxc/v/b;->implements:Ljava/lang/String;

    return-object v0
.end method

.method public for()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lbn/sdk/szwcsss/coddxcxc/v/b;->transient:Ljava/lang/String;

    return-object v0
.end method
