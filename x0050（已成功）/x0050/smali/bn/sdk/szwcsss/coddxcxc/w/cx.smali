.class public Lbn/sdk/szwcsss/coddxcxc/w/cx;
.super Ljava/lang/Object;

# interfaces
.implements Lbn/sdk/szwcsss/coddxcxc/y/cx;


# instance fields
.field public b:Ljava/lang/String;

.field public for:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbn/sdk/szwcsss/coddxcxc/w/cx;->b:Ljava/lang/String;

    iput p2, p0, Lbn/sdk/szwcsss/coddxcxc/w/cx;->for:I

    return-void
.end method


# virtual methods
.method public b()Lorg/json/JSONObject;
    .locals 3

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "a"

    iget-object v2, p0, Lbn/sdk/szwcsss/coddxcxc/w/cx;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "b"

    iget v2, p0, Lbn/sdk/szwcsss/coddxcxc/w/cx;->for:I

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

.method public b(Lorg/json/JSONObject;)V
    .locals 0

    return-void
.end method

.method public for()Ljava/lang/String;
    .locals 1

    const-string v0, "a"

    return-object v0
.end method
