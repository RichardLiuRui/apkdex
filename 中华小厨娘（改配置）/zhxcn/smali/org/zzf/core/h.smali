.class Lorg/zzf/core/h;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:I

.field final synthetic c:Lorg/zzf/core/a;


# direct methods
.method constructor <init>(Lorg/zzf/core/a;Landroid/content/Context;I)V
    .locals 0

    iput-object p1, p0, Lorg/zzf/core/h;->c:Lorg/zzf/core/a;

    iput-object p2, p0, Lorg/zzf/core/h;->a:Landroid/content/Context;

    iput p3, p0, Lorg/zzf/core/h;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    invoke-static {}, Lorg/zzf/core/l;->a()Lorg/zzf/core/l;

    move-result-object v0

    iget-object v1, p0, Lorg/zzf/core/h;->a:Landroid/content/Context;

    iget-object v2, p0, Lorg/zzf/core/h;->c:Lorg/zzf/core/a;

    invoke-static {v2}, Lorg/zzf/core/a;->b(Lorg/zzf/core/a;)Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lorg/zzf/core/h;->b:I

    invoke-virtual {v0, v1, v2, v3}, Lorg/zzf/core/l;->a(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method
