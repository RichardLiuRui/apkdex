.class public Lbn/sdk/szwcsss/coddxcxc/v/cx;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private aa:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private cx:Ljava/lang/String;

.field private for:Ljava/lang/String;

.field private implements:Ljava/lang/String;

.field private import:Ljava/lang/String;

.field private instanceof:Ljava/lang/String;

.field private native:Ljava/lang/String;

.field private private:Ljava/lang/String;

.field private safdasfs:Ljava/util/HashMap;

.field private sdfsf:Ljava/lang/String;

.field private synchronized:Ljava/lang/String;

.field private throw:Ljava/lang/String;

.field private transient:Ljava/lang/String;

.field private while:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lbn/sdk/szwcsss/coddxcxc/v/cx;->b:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lbn/sdk/szwcsss/coddxcxc/v/cx;->for:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lbn/sdk/szwcsss/coddxcxc/v/cx;->cx:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lbn/sdk/szwcsss/coddxcxc/v/cx;->aa:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lbn/sdk/szwcsss/coddxcxc/v/cx;->throw:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lbn/sdk/szwcsss/coddxcxc/v/cx;->while:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lbn/sdk/szwcsss/coddxcxc/v/cx;->implements:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lbn/sdk/szwcsss/coddxcxc/v/cx;->safdasfs:Ljava/util/HashMap;

    const-string v0, ""

    iput-object v0, p0, Lbn/sdk/szwcsss/coddxcxc/v/cx;->instanceof:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lbn/sdk/szwcsss/coddxcxc/v/cx;->private:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lbn/sdk/szwcsss/coddxcxc/v/cx;->transient:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lbn/sdk/szwcsss/coddxcxc/v/cx;->synchronized:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lbn/sdk/szwcsss/coddxcxc/v/cx;->sdfsf:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lbn/sdk/szwcsss/coddxcxc/v/cx;->a:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lbn/sdk/szwcsss/coddxcxc/v/cx;->import:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lbn/sdk/szwcsss/coddxcxc/v/cx;->native:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/String;)Lbn/sdk/szwcsss/coddxcxc/v/b;
    .locals 1

    iget-object v0, p0, Lbn/sdk/szwcsss/coddxcxc/v/cx;->safdasfs:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbn/sdk/szwcsss/coddxcxc/v/b;

    return-object v0
.end method

.method public b(Lorg/json/JSONObject;)V
    .locals 6

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    const-string v0, "pid"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, ""

    :goto_1
    iput-object v0, p0, Lbn/sdk/szwcsss/coddxcxc/v/cx;->b:Ljava/lang/String;

    const-string v0, "appid"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, ""

    :goto_2
    iput-object v0, p0, Lbn/sdk/szwcsss/coddxcxc/v/cx;->for:Ljava/lang/String;

    const-string v0, "appkey"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, ""

    :goto_3
    iput-object v0, p0, Lbn/sdk/szwcsss/coddxcxc/v/cx;->cx:Ljava/lang/String;

    const-string v0, "appname"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, ""

    :goto_4
    iput-object v0, p0, Lbn/sdk/szwcsss/coddxcxc/v/cx;->aa:Ljava/lang/String;

    const-string v0, "appver"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, ""

    :goto_5
    iput-object v0, p0, Lbn/sdk/szwcsss/coddxcxc/v/cx;->throw:Ljava/lang/String;

    const-string v0, "needtip"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, ""

    :goto_6
    iput-object v0, p0, Lbn/sdk/szwcsss/coddxcxc/v/cx;->while:Ljava/lang/String;

    const-string v0, "lttipkey"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, ""

    :goto_7
    iput-object v0, p0, Lbn/sdk/szwcsss/coddxcxc/v/cx;->instanceof:Ljava/lang/String;

    const-string v0, "cmid"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, ""

    :goto_8
    iput-object v0, p0, Lbn/sdk/szwcsss/coddxcxc/v/cx;->private:Ljava/lang/String;

    const-string v0, "cmpwd"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, ""

    :goto_9
    iput-object v0, p0, Lbn/sdk/szwcsss/coddxcxc/v/cx;->transient:Ljava/lang/String;

    const-string v0, "zzfqd"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    const-string v0, ""

    :goto_a
    iput-object v0, p0, Lbn/sdk/szwcsss/coddxcxc/v/cx;->synchronized:Ljava/lang/String;

    const-string v0, "zzfcid"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    const-string v0, ""

    :goto_b
    iput-object v0, p0, Lbn/sdk/szwcsss/coddxcxc/v/cx;->sdfsf:Ljava/lang/String;

    const-string v0, "lscid"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    const-string v0, ""

    :goto_c
    iput-object v0, p0, Lbn/sdk/szwcsss/coddxcxc/v/cx;->a:Ljava/lang/String;

    const-string v0, "partnerid"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    const-string v0, ""

    :goto_d
    iput-object v0, p0, Lbn/sdk/szwcsss/coddxcxc/v/cx;->import:Ljava/lang/String;

    const-string v0, "epayqd"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    const-string v0, ""

    :goto_e
    iput-object v0, p0, Lbn/sdk/szwcsss/coddxcxc/v/cx;->native:Ljava/lang/String;

    const-string v0, "codes"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    const/4 v0, 0x0

    :goto_f
    if-ge v0, v2, :cond_0

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_2

    new-instance v4, Lbn/sdk/szwcsss/coddxcxc/v/b;

    invoke-direct {v4}, Lbn/sdk/szwcsss/coddxcxc/v/b;-><init>()V

    invoke-virtual {v4, v3}, Lbn/sdk/szwcsss/coddxcxc/v/b;->b(Lorg/json/JSONObject;)V

    invoke-virtual {v4}, Lbn/sdk/szwcsss/coddxcxc/v/b;->b()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lbn/sdk/szwcsss/coddxcxc/v/cx;->safdasfs:Ljava/util/HashMap;

    invoke-virtual {v4}, Lbn/sdk/szwcsss/coddxcxc/v/b;->for()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    :cond_3
    const-string v0, "pid"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_4
    const-string v0, "appid"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    :cond_5
    const-string v0, "appkey"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_3

    :cond_6
    const-string v0, "appname"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_4

    :cond_7
    const-string v0, "appver"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_5

    :cond_8
    const-string v0, "needtip"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_6

    :cond_9
    const-string v0, "lttipkey"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_7

    :cond_a
    const-string v0, "cmid"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_8

    :cond_b
    const-string v0, "cmpwd"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_9

    :cond_c
    const-string v0, "zzfqd"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_a

    :cond_d
    const-string v0, "zzfcid"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_b

    :cond_e
    const-string v0, "lscid"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_c

    :cond_f
    const-string v0, "partnerid"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_d

    :cond_10
    const-string v0, "epayqd"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto/16 :goto_e

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_0
.end method

.method public b()Z
    .locals 1

    iget-object v0, p0, Lbn/sdk/szwcsss/coddxcxc/v/cx;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lbn/sdk/szwcsss/coddxcxc/v/cx;->safdasfs:Ljava/util/HashMap;

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

.method public for()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lbn/sdk/szwcsss/coddxcxc/v/cx;->b:Ljava/lang/String;

    return-object v0
.end method
