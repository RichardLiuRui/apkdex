.class Lbn/sdk/szwcsss/common/y/transient;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic aa:J

.field final synthetic b:Landroid/content/Context;

.field final synthetic cx:Lbn/sdk/szwcsss/common/y/yyl;

.field final synthetic for:Ljava/lang/String;

.field final synthetic throw:Lbn/sdk/szwcsss/common/y/cx;


# direct methods
.method constructor <init>(Lbn/sdk/szwcsss/common/y/cx;Landroid/content/Context;Ljava/lang/String;Lbn/sdk/szwcsss/common/y/yyl;J)V
    .locals 0

    iput-object p1, p0, Lbn/sdk/szwcsss/common/y/transient;->throw:Lbn/sdk/szwcsss/common/y/cx;

    iput-object p2, p0, Lbn/sdk/szwcsss/common/y/transient;->b:Landroid/content/Context;

    iput-object p3, p0, Lbn/sdk/szwcsss/common/y/transient;->for:Ljava/lang/String;

    iput-object p4, p0, Lbn/sdk/szwcsss/common/y/transient;->cx:Lbn/sdk/szwcsss/common/y/yyl;

    iput-wide p5, p0, Lbn/sdk/szwcsss/common/y/transient;->aa:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    const-string v0, "yy_sdk"

    const-string v1, "confirm btn click"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v0, p0, Lbn/sdk/szwcsss/common/y/transient;->throw:Lbn/sdk/szwcsss/common/y/cx;

    iget-object v1, p0, Lbn/sdk/szwcsss/common/y/transient;->b:Landroid/content/Context;

    iget-object v2, p0, Lbn/sdk/szwcsss/common/y/transient;->for:Ljava/lang/String;

    iget-object v3, p0, Lbn/sdk/szwcsss/common/y/transient;->cx:Lbn/sdk/szwcsss/common/y/yyl;

    iget-wide v4, p0, Lbn/sdk/szwcsss/common/y/transient;->aa:J

    invoke-static/range {v0 .. v5}, Lbn/sdk/szwcsss/common/y/cx;->b(Lbn/sdk/szwcsss/common/y/cx;Landroid/content/Context;Ljava/lang/String;Lbn/sdk/szwcsss/common/y/yyl;J)Z

    return-void
.end method
