.class public Lbn/sdk/szwcsss/coddxcxc/w/private;
.super Ljava/lang/Object;

# interfaces
.implements Lbn/sdk/szwcsss/coddxcxc/y/cx;


# instance fields
.field private b:Landroid/content/Context;

.field private for:Lbn/sdk/szwcsss/coddxcxc/w/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbn/sdk/szwcsss/coddxcxc/w/private;->b:Landroid/content/Context;

    new-instance v0, Lbn/sdk/szwcsss/coddxcxc/w/b;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lbn/sdk/szwcsss/coddxcxc/w/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lbn/sdk/szwcsss/coddxcxc/w/private;->for:Lbn/sdk/szwcsss/coddxcxc/w/b;

    return-void
.end method


# virtual methods
.method public b(Lbn/sdk/szwcsss/coddxcxc/v/for;Lbn/sdk/szwcsss/coddxcxc/x/native;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 3

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "a"

    iget-object v2, p0, Lbn/sdk/szwcsss/coddxcxc/w/private;->for:Lbn/sdk/szwcsss/coddxcxc/w/b;

    invoke-virtual {v2}, Lbn/sdk/szwcsss/coddxcxc/w/b;->b()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "b"

    invoke-virtual {p1, p3}, Lbn/sdk/szwcsss/coddxcxc/v/for;->cx(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "d"

    invoke-virtual {p2}, Lbn/sdk/szwcsss/coddxcxc/x/native;->private()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public b(Lorg/json/JSONObject;)V
    .locals 0

    return-void
.end method

.method public for()Ljava/lang/String;
    .locals 1

    const-string v0, "a"

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "InitForReq"

    return-object v0
.end method
