.class public Lbn/sdk/szwcsss/coddxcxc/x/b;
.super Ljava/lang/Object;


# instance fields
.field public aa:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public cx:I

.field public for:I

.field public private:Ljava/lang/String;

.field public throw:Ljava/lang/String;

.field public while:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lbn/sdk/szwcsss/coddxcxc/x/b;->b:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lbn/sdk/szwcsss/coddxcxc/x/b;->aa:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lbn/sdk/szwcsss/coddxcxc/x/b;->throw:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lbn/sdk/szwcsss/coddxcxc/x/b;->while:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lbn/sdk/szwcsss/coddxcxc/x/b;->private:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lbn/sdk/szwcsss/coddxcxc/x/b;->for:I

    const/4 v0, 0x1

    iput v0, p0, Lbn/sdk/szwcsss/coddxcxc/x/b;->cx:I

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IMSInfo [chipName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lbn/sdk/szwcsss/coddxcxc/x/b;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", imsi_1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lbn/sdk/szwcsss/coddxcxc/x/b;->aa:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", imei_1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lbn/sdk/szwcsss/coddxcxc/x/b;->throw:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", imsi_2="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lbn/sdk/szwcsss/coddxcxc/x/b;->while:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", imei_2="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lbn/sdk/szwcsss/coddxcxc/x/b;->private:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
