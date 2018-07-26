.class public Lbn/sdk/szwcsss/coddxcxc/x/native;
.super Ljava/lang/Object;

# interfaces
.implements Lbn/sdk/szwcsss/coddxcxc/y/cx;


# static fields
.field public static b:I


# instance fields
.field private a:I

.field private aa:Ljava/lang/String;

.field private cx:Ljava/lang/String;

.field private for:Ljava/lang/String;

.field private implements:I

.field private import:J

.field private instanceof:Ljava/lang/String;

.field private private:Ljava/lang/String;

.field private sdfsf:Ljava/lang/String;

.field private synchronized:Z

.field private throw:I

.field private transient:Ljava/lang/String;

.field private while:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    sput v0, Lbn/sdk/szwcsss/coddxcxc/x/native;->b:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJ)V
    .locals 3

    const/16 v2, 0x40

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Lbn/sdk/szwcsss/coddxcxc/x/native;->b:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lbn/sdk/szwcsss/coddxcxc/x/native;->b:I

    iput-object p4, p0, Lbn/sdk/szwcsss/coddxcxc/x/native;->for:Ljava/lang/String;

    iput-object p3, p0, Lbn/sdk/szwcsss/coddxcxc/x/native;->private:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lbn/sdk/szwcsss/coddxcxc/x/native;->transient:Ljava/lang/String;

    iput p1, p0, Lbn/sdk/szwcsss/coddxcxc/x/native;->throw:I

    iput-object p2, p0, Lbn/sdk/szwcsss/coddxcxc/x/native;->while:Ljava/lang/String;

    const/16 v0, -0x64

    iput v0, p0, Lbn/sdk/szwcsss/coddxcxc/x/native;->implements:I

    const-string v0, "0"

    iput-object v0, p0, Lbn/sdk/szwcsss/coddxcxc/x/native;->instanceof:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lbn/sdk/szwcsss/coddxcxc/x/native;->aa:Ljava/lang/String;

    iput-wide p6, p0, Lbn/sdk/szwcsss/coddxcxc/x/native;->import:J

    iput-boolean p5, p0, Lbn/sdk/szwcsss/coddxcxc/x/native;->synchronized:Z

    if-eqz p1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lbn/sdk/szwcsss/coddxcxc/x/native;->for:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lbn/sdk/szwcsss/coddxcxc/x/native;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbn/sdk/szwcsss/coddxcxc/x/native;->cx:Ljava/lang/String;

    iget-object v0, p0, Lbn/sdk/szwcsss/coddxcxc/x/native;->cx:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v2, :cond_0

    iget-object v0, p0, Lbn/sdk/szwcsss/coddxcxc/x/native;->cx:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbn/sdk/szwcsss/coddxcxc/x/native;->cx:Ljava/lang/String;

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PayOrder new :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lbn/sdk/szwcsss/coddxcxc/x/native;->cx:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lbn/sdk/szwcsss/coddxcxc/y/throw;->cx(Ljava/lang/String;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public aa()I
    .locals 1

    iget v0, p0, Lbn/sdk/szwcsss/coddxcxc/x/native;->implements:I

    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 7

    const/16 v6, 0x10

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x64

    div-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x8

    if-le v2, v3, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x9

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v2, Lbn/sdk/szwcsss/coddxcxc/x/native;->b:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-le v0, v6, :cond_1

    const/4 v0, 0x0

    invoke-virtual {v1, v0, v6}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public b(I)V
    .locals 0

    iput p1, p0, Lbn/sdk/szwcsss/coddxcxc/x/native;->a:I

    return-void
.end method

.method public b(ILjava/lang/String;)V
    .locals 0

    iput p1, p0, Lbn/sdk/szwcsss/coddxcxc/x/native;->implements:I

    iput-object p2, p0, Lbn/sdk/szwcsss/coddxcxc/x/native;->aa:Ljava/lang/String;

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lbn/sdk/szwcsss/coddxcxc/x/native;->transient:Ljava/lang/String;

    return-void
.end method

.method public b(Lorg/json/JSONObject;)V
    .locals 0

    return-void
.end method

.method public cx()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lbn/sdk/szwcsss/coddxcxc/x/native;->cx:Ljava/lang/String;

    return-object v0
.end method

.method public cx(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lbn/sdk/szwcsss/coddxcxc/x/native;->sdfsf:Ljava/lang/String;

    return-void
.end method

.method public for()Ljava/lang/String;
    .locals 1

    const-string v0, "e"

    return-object v0
.end method

.method public for(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lbn/sdk/szwcsss/coddxcxc/x/native;->instanceof:Ljava/lang/String;

    return-void
.end method

.method public private()Lorg/json/JSONObject;
    .locals 4

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x0

    :try_start_1
    iget-object v2, p0, Lbn/sdk/szwcsss/coddxcxc/x/native;->instanceof:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    :goto_0
    :try_start_2
    const-string v2, "a"

    iget-object v3, p0, Lbn/sdk/szwcsss/coddxcxc/x/native;->cx:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "b"

    iget v3, p0, Lbn/sdk/szwcsss/coddxcxc/x/native;->throw:I

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "c"

    iget-object v3, p0, Lbn/sdk/szwcsss/coddxcxc/x/native;->private:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "d"

    iget-object v3, p0, Lbn/sdk/szwcsss/coddxcxc/x/native;->transient:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "e"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "f"

    iget v2, p0, Lbn/sdk/szwcsss/coddxcxc/x/native;->implements:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "g"

    iget-object v2, p0, Lbn/sdk/szwcsss/coddxcxc/x/native;->aa:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "buildJson :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lbn/sdk/szwcsss/coddxcxc/y/throw;->cx(Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    :goto_1
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_1

    :catch_1
    move-exception v2

    goto :goto_0
.end method

.method public throw()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lbn/sdk/szwcsss/coddxcxc/x/native;->while:Ljava/lang/String;

    return-object v0
.end method

.method public while()I
    .locals 1

    iget v0, p0, Lbn/sdk/szwcsss/coddxcxc/x/native;->a:I

    return v0
.end method
