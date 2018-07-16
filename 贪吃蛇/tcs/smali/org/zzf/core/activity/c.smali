.class Lorg/zzf/core/activity/c;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/zzf/core/ui/a;


# instance fields
.field final synthetic a:Lorg/zzf/core/activity/ZhangPayActivity;


# direct methods
.method constructor <init>(Lorg/zzf/core/activity/ZhangPayActivity;)V
    .locals 0

    iput-object p1, p0, Lorg/zzf/core/activity/c;->a:Lorg/zzf/core/activity/ZhangPayActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lorg/zzf/core/activity/c;->a:Lorg/zzf/core/activity/ZhangPayActivity;

    invoke-static {v0}, Lorg/zzf/core/activity/ZhangPayActivity;->g(Lorg/zzf/core/activity/ZhangPayActivity;)V

    return-void
.end method

.method public b()V
    .locals 2

    invoke-static {}, Lorg/zzf/core/a;->a()Lorg/zzf/core/a;

    move-result-object v0

    iget-object v1, p0, Lorg/zzf/core/activity/c;->a:Lorg/zzf/core/activity/ZhangPayActivity;

    iget-object v1, v1, Lorg/zzf/core/activity/ZhangPayActivity;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lorg/zzf/core/a;->a(Landroid/content/Context;)V

    iget-object v0, p0, Lorg/zzf/core/activity/c;->a:Lorg/zzf/core/activity/ZhangPayActivity;

    invoke-static {v0}, Lorg/zzf/core/activity/ZhangPayActivity;->e(Lorg/zzf/core/activity/ZhangPayActivity;)V

    return-void
.end method
