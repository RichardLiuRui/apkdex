.class public Lbn/sdk/szwcsss/coddxcxc/v/for;
.super Ljava/lang/Object;

# interfaces
.implements Lbn/sdk/szwcsss/coddxcxc/y/cx;


# instance fields
.field private a:Ljava/lang/String;

.field private final aa:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final cx:Ljava/lang/String;

.field private final for:Ljava/lang/String;

.field private implements:Ljava/lang/String;

.field private import:Ljava/util/HashMap;

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

    const-string v0, "ver"

    iput-object v0, p0, Lbn/sdk/szwcsss/coddxcxc/v/for;->b:Ljava/lang/String;

    const-string v0, "pid"

    iput-object v0, p0, Lbn/sdk/szwcsss/coddxcxc/v/for;->for:Ljava/lang/String;

    const-string v0, "pname"

    iput-object v0, p0, Lbn/sdk/szwcsss/coddxcxc/v/for;->cx:Ljava/lang/String;

    const-string v0, "appid"

    iput-object v0, p0, Lbn/sdk/szwcsss/coddxcxc/v/for;->aa:Ljava/lang/String;

    const-string v0, "appver"

    iput-object v0, p0, Lbn/sdk/szwcsss/coddxcxc/v/for;->throw:Ljava/lang/String;

    const-string v0, "appname"

    iput-object v0, p0, Lbn/sdk/szwcsss/coddxcxc/v/for;->while:Ljava/lang/String;

    const-string v0, "data"

    iput-object v0, p0, Lbn/sdk/szwcsss/coddxcxc/v/for;->private:Ljava/lang/String;

    const-string v0, "0"

    iput-object v0, p0, Lbn/sdk/szwcsss/coddxcxc/v/for;->transient:Ljava/lang/String;

    const-string v0, "0"

    iput-object v0, p0, Lbn/sdk/szwcsss/coddxcxc/v/for;->implements:Ljava/lang/String;

    const-string v0, "0"

    iput-object v0, p0, Lbn/sdk/szwcsss/coddxcxc/v/for;->instanceof:Ljava/lang/String;

    const-string v0, "0"

    iput-object v0, p0, Lbn/sdk/szwcsss/coddxcxc/v/for;->synchronized:Ljava/lang/String;

    const-string v0, "0"

    iput-object v0, p0, Lbn/sdk/szwcsss/coddxcxc/v/for;->sdfsf:Ljava/lang/String;

    const-string v0, "0"

    iput-object v0, p0, Lbn/sdk/szwcsss/coddxcxc/v/for;->a:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lbn/sdk/szwcsss/coddxcxc/v/for;->import:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lbn/sdk/szwcsss/coddxcxc/v/for;->b(Ljava/lang/String;Z)V

    return-void
.end method

.method public b(Ljava/lang/String;Z)V
    .locals 6

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    if-eqz v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PayData parseJson: \n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lbn/sdk/szwcsss/coddxcxc/y/throw;->b(Ljava/lang/String;)V

    const-string v0, "ver"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, ""

    :goto_1
    iput-object v0, p0, Lbn/sdk/szwcsss/coddxcxc/v/for;->transient:Ljava/lang/String;

    const-string v0, "pid"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, ""

    :goto_2
    iput-object v0, p0, Lbn/sdk/szwcsss/coddxcxc/v/for;->implements:Ljava/lang/String;

    const-string v0, "pname"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, ""

    :goto_3
    iput-object v0, p0, Lbn/sdk/szwcsss/coddxcxc/v/for;->instanceof:Ljava/lang/String;

    const-string v0, "appid"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, ""

    :goto_4
    iput-object v0, p0, Lbn/sdk/szwcsss/coddxcxc/v/for;->synchronized:Ljava/lang/String;

    const-string v0, "appver"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, ""

    :goto_5
    iput-object v0, p0, Lbn/sdk/szwcsss/coddxcxc/v/for;->sdfsf:Ljava/lang/String;

    const-string v0, "appname"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, ""

    :goto_6
    iput-object v0, p0, Lbn/sdk/szwcsss/coddxcxc/v/for;->a:Ljava/lang/String;

    if-nez p2, :cond_0

    const-string v0, "data"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    const/4 v0, 0x0

    :goto_7
    if-ge v0, v2, :cond_0

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_2

    new-instance v4, Lbn/sdk/szwcsss/coddxcxc/v/cx;

    invoke-direct {v4}, Lbn/sdk/szwcsss/coddxcxc/v/cx;-><init>()V

    invoke-virtual {v4, v3}, Lbn/sdk/szwcsss/coddxcxc/v/cx;->b(Lorg/json/JSONObject;)V

    invoke-virtual {v4}, Lbn/sdk/szwcsss/coddxcxc/v/cx;->b()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lbn/sdk/szwcsss/coddxcxc/v/for;->import:Ljava/util/HashMap;

    invoke-virtual {v4}, Lbn/sdk/szwcsss/coddxcxc/v/cx;->for()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_3
    const-string v0, "ver"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_4
    const-string v0, "pid"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_5
    const-string v0, "pname"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_6
    const-string v0, "appid"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_7
    const-string v0, "appver"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    :cond_8
    const-string v0, "appname"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_6

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_0
.end method

.method public b(Lorg/json/JSONObject;)V
    .locals 0

    return-void
.end method

.method public b()Z
    .locals 1

    iget-object v0, p0, Lbn/sdk/szwcsss/coddxcxc/v/for;->import:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public cx(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 3

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "a"

    iget-object v2, p0, Lbn/sdk/szwcsss/coddxcxc/v/for;->transient:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "b"

    iget-object v2, p0, Lbn/sdk/szwcsss/coddxcxc/v/for;->implements:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "c"

    iget-object v2, p0, Lbn/sdk/szwcsss/coddxcxc/v/for;->synchronized:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "d"

    iget-object v2, p0, Lbn/sdk/szwcsss/coddxcxc/v/for;->sdfsf:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "e"

    iget-object v2, p0, Lbn/sdk/szwcsss/coddxcxc/v/for;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "f"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "g"

    const/16 v2, 0x64

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public for(Ljava/lang/String;)Lbn/sdk/szwcsss/coddxcxc/v/cx;
    .locals 1

    iget-object v0, p0, Lbn/sdk/szwcsss/coddxcxc/v/for;->import:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbn/sdk/szwcsss/coddxcxc/v/cx;

    return-object v0
.end method

.method public for()Ljava/lang/String;
    .locals 1

    const-string v0, "e"

    return-object v0
.end method
