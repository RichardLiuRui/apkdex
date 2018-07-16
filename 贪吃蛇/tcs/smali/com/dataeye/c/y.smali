.class Lcom/dataeye/c/y;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/dataeye/c/y;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    const-string v0, "DCProject DBAsyncUtil.getHandler() initDeviceDetail"

    invoke-static {v0}, Lcom/dataeye/c/u;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/dataeye/c/y;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/dataeye/c/x;->a(Landroid/content/Context;)V

    return-void
.end method
