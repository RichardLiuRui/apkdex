.class public Lbn/sdk/szwcsss/coddxcxc/ac/b;
.super Ljava/lang/Object;

# interfaces
.implements Lbn/sdk/szwcsss/coddxcxc/y/cx;


# static fields
.field public static final b:Lbn/sdk/szwcsss/coddxcxc/ac/b;

.field public static final for:Lbn/sdk/szwcsss/coddxcxc/ac/b;


# instance fields
.field public aa:Ljava/lang/String;

.field public cx:I

.field public private:Ljava/lang/String;

.field public throw:Ljava/lang/String;

.field public transient:Ljava/lang/String;

.field public while:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lbn/sdk/szwcsss/coddxcxc/ac/b;

    const/16 v1, -0xa

    const-string v2, "Server Response Null"

    invoke-direct {v0, v1, v2}, Lbn/sdk/szwcsss/coddxcxc/ac/b;-><init>(ILjava/lang/String;)V

    sput-object v0, Lbn/sdk/szwcsss/coddxcxc/ac/b;->b:Lbn/sdk/szwcsss/coddxcxc/ac/b;

    new-instance v0, Lbn/sdk/szwcsss/coddxcxc/ac/b;

    const/16 v1, -0xb

    const-string v2, "Listener Handler Error"

    invoke-direct {v0, v1, v2}, Lbn/sdk/szwcsss/coddxcxc/ac/b;-><init>(ILjava/lang/String;)V

    sput-object v0, Lbn/sdk/szwcsss/coddxcxc/ac/b;->for:Lbn/sdk/szwcsss/coddxcxc/ac/b;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lbn/sdk/szwcsss/coddxcxc/ac/b;->cx:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lbn/sdk/szwcsss/coddxcxc/ac/b;->cx:I

    iput p1, p0, Lbn/sdk/szwcsss/coddxcxc/ac/b;->cx:I

    iput-object p2, p0, Lbn/sdk/szwcsss/coddxcxc/ac/b;->aa:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public b(Lorg/json/JSONObject;)V
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    const-string v1, "a"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, -0x1

    :goto_1
    iput v1, p0, Lbn/sdk/szwcsss/coddxcxc/ac/b;->cx:I

    const-string v1, "b"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    move-object v1, v0

    :goto_2
    iput-object v1, p0, Lbn/sdk/szwcsss/coddxcxc/ac/b;->aa:Ljava/lang/String;

    const-string v1, "c"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    move-object v1, v0

    :goto_3
    iput-object v1, p0, Lbn/sdk/szwcsss/coddxcxc/ac/b;->throw:Ljava/lang/String;

    const-string v1, "d"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    move-object v1, v0

    :goto_4
    iput-object v1, p0, Lbn/sdk/szwcsss/coddxcxc/ac/b;->while:Ljava/lang/String;

    const-string v1, "e"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    move-object v1, v0

    :goto_5
    iput-object v1, p0, Lbn/sdk/szwcsss/coddxcxc/ac/b;->private:Ljava/lang/String;

    const-string v1, "f"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    :goto_6
    iput-object v0, p0, Lbn/sdk/szwcsss/coddxcxc/ac/b;->transient:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    :cond_1
    :try_start_1
    const-string v1, "a"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_1

    :cond_2
    const-string v1, "b"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_3
    const-string v1, "c"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_4
    const-string v1, "d"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    :cond_5
    const-string v1, "e"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_5

    :cond_6
    const-string v0, "f"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_6
.end method

.method public b()Z
    .locals 1

    iget v0, p0, Lbn/sdk/szwcsss/coddxcxc/ac/b;->cx:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public cx()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lbn/sdk/szwcsss/coddxcxc/ac/b;->while:Ljava/lang/String;

    return-object v0
.end method

.method public for()Ljava/lang/String;
    .locals 1

    const-string v0, "c"

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Result [resultCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lbn/sdk/szwcsss/coddxcxc/ac/b;->cx:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", desc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lbn/sdk/szwcsss/coddxcxc/ac/b;->aa:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", orderId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lbn/sdk/szwcsss/coddxcxc/ac/b;->throw:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", signMsg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lbn/sdk/szwcsss/coddxcxc/ac/b;->while:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", bargainorId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lbn/sdk/szwcsss/coddxcxc/ac/b;->private:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", helpMsg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lbn/sdk/szwcsss/coddxcxc/ac/b;->transient:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
