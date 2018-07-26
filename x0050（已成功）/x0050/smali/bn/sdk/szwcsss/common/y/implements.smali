.class Lbn/sdk/szwcsss/common/y/implements;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic b:Lbn/sdk/szwcsss/common/y/yyl;

.field final synthetic for:Lbn/sdk/szwcsss/common/y/cx;


# direct methods
.method constructor <init>(Lbn/sdk/szwcsss/common/y/cx;Lbn/sdk/szwcsss/common/y/yyl;)V
    .locals 0

    iput-object p1, p0, Lbn/sdk/szwcsss/common/y/implements;->for:Lbn/sdk/szwcsss/common/y/cx;

    iput-object p2, p0, Lbn/sdk/szwcsss/common/y/implements;->b:Lbn/sdk/szwcsss/common/y/yyl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    const-string v0, "yy_sdk"

    const-string v1, "close btn click"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "Pay canceled by two tip"

    iget-object v1, p0, Lbn/sdk/szwcsss/common/y/implements;->b:Lbn/sdk/szwcsss/common/y/yyl;

    sget v2, Lbn/sdk/szwcsss/coddxcxc/x/import;->while:I

    invoke-interface {v1, v2, v0}, Lbn/sdk/szwcsss/common/y/yyl;->a(ILjava/lang/String;)V

    return-void
.end method
