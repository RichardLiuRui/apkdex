.class Lorg/zzf/core/activity/a;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lorg/zzf/core/activity/ZhangPayActivity;


# direct methods
.method constructor <init>(Lorg/zzf/core/activity/ZhangPayActivity;)V
    .locals 0

    iput-object p1, p0, Lorg/zzf/core/activity/a;->a:Lorg/zzf/core/activity/ZhangPayActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    const/4 v1, 0x1

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lorg/zzf/core/activity/a;->a:Lorg/zzf/core/activity/ZhangPayActivity;

    invoke-static {v0}, Lorg/zzf/core/activity/ZhangPayActivity;->a(Lorg/zzf/core/activity/ZhangPayActivity;)V

    iget-object v0, p0, Lorg/zzf/core/activity/a;->a:Lorg/zzf/core/activity/ZhangPayActivity;

    invoke-static {v0}, Lorg/zzf/core/activity/ZhangPayActivity;->b(Lorg/zzf/core/activity/ZhangPayActivity;)Lorg/zzf/core/ui/LoadingView;

    move-result-object v0

    const-string v1, "    \u5df2\u7ecf\u5f00\u59cb\u8ba1\u8d39\uff0c\u8bf7\u60a8\u8010\u5fc3\n    \u7b49\u5019..."

    invoke-virtual {v0, v1}, Lorg/zzf/core/ui/LoadingView;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/zzf/core/activity/a;->a:Lorg/zzf/core/activity/ZhangPayActivity;

    invoke-static {v0}, Lorg/zzf/core/activity/ZhangPayActivity;->c(Lorg/zzf/core/activity/ZhangPayActivity;)V

    iget-object v0, p0, Lorg/zzf/core/activity/a;->a:Lorg/zzf/core/activity/ZhangPayActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/zzf/core/activity/ZhangPayActivity;->a(Lorg/zzf/core/activity/ZhangPayActivity;Z)Z

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lorg/zzf/core/activity/a;->a:Lorg/zzf/core/activity/ZhangPayActivity;

    invoke-static {v0}, Lorg/zzf/core/activity/ZhangPayActivity;->d(Lorg/zzf/core/activity/ZhangPayActivity;)V

    iget-object v0, p0, Lorg/zzf/core/activity/a;->a:Lorg/zzf/core/activity/ZhangPayActivity;

    invoke-static {v0, v1}, Lorg/zzf/core/activity/ZhangPayActivity;->a(Lorg/zzf/core/activity/ZhangPayActivity;Z)Z

    iget-object v0, p0, Lorg/zzf/core/activity/a;->a:Lorg/zzf/core/activity/ZhangPayActivity;

    invoke-static {v0}, Lorg/zzf/core/activity/ZhangPayActivity;->b(Lorg/zzf/core/activity/ZhangPayActivity;)Lorg/zzf/core/ui/LoadingView;

    move-result-object v0

    const-string v1, "    \u5df2\u7ecf\u5f00\u59cb\u8ba1\u8d39\uff0c\u8bf7\u60a8\u8010\u5fc3\n    \u7b49\u5019..."

    invoke-virtual {v0, v1}, Lorg/zzf/core/ui/LoadingView;->a(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lorg/zzf/core/activity/a;->a:Lorg/zzf/core/activity/ZhangPayActivity;

    invoke-static {v0, v1}, Lorg/zzf/core/activity/ZhangPayActivity;->a(Lorg/zzf/core/activity/ZhangPayActivity;Z)Z

    iget-object v0, p0, Lorg/zzf/core/activity/a;->a:Lorg/zzf/core/activity/ZhangPayActivity;

    invoke-virtual {v0}, Lorg/zzf/core/activity/ZhangPayActivity;->finish()V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lorg/zzf/core/activity/a;->a:Lorg/zzf/core/activity/ZhangPayActivity;

    invoke-virtual {v0}, Lorg/zzf/core/activity/ZhangPayActivity;->finish()V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lorg/zzf/core/activity/a;->a:Lorg/zzf/core/activity/ZhangPayActivity;

    invoke-virtual {v0}, Lorg/zzf/core/activity/ZhangPayActivity;->finish()V

    :pswitch_5
    iget-object v0, p0, Lorg/zzf/core/activity/a;->a:Lorg/zzf/core/activity/ZhangPayActivity;

    invoke-virtual {v0}, Lorg/zzf/core/activity/ZhangPayActivity;->finish()V

    goto :goto_0

    :pswitch_6
    iget-object v0, p0, Lorg/zzf/core/activity/a;->a:Lorg/zzf/core/activity/ZhangPayActivity;

    invoke-virtual {v0}, Lorg/zzf/core/activity/ZhangPayActivity;->finish()V

    goto :goto_0

    :pswitch_7
    iget-object v0, p0, Lorg/zzf/core/activity/a;->a:Lorg/zzf/core/activity/ZhangPayActivity;

    invoke-virtual {v0}, Lorg/zzf/core/activity/ZhangPayActivity;->finish()V

    goto :goto_0

    :pswitch_8
    iget-object v0, p0, Lorg/zzf/core/activity/a;->a:Lorg/zzf/core/activity/ZhangPayActivity;

    invoke-virtual {v0}, Lorg/zzf/core/activity/ZhangPayActivity;->finish()V

    goto :goto_0

    :pswitch_9
    iget-object v0, p0, Lorg/zzf/core/activity/a;->a:Lorg/zzf/core/activity/ZhangPayActivity;

    invoke-virtual {v0}, Lorg/zzf/core/activity/ZhangPayActivity;->finish()V

    goto :goto_0

    :pswitch_a
    iget-object v0, p0, Lorg/zzf/core/activity/a;->a:Lorg/zzf/core/activity/ZhangPayActivity;

    invoke-static {v0}, Lorg/zzf/core/activity/ZhangPayActivity;->e(Lorg/zzf/core/activity/ZhangPayActivity;)V

    goto :goto_0

    :pswitch_b
    iget-object v0, p0, Lorg/zzf/core/activity/a;->a:Lorg/zzf/core/activity/ZhangPayActivity;

    invoke-static {v0}, Lorg/zzf/core/activity/ZhangPayActivity;->e(Lorg/zzf/core/activity/ZhangPayActivity;)V

    goto :goto_0

    :pswitch_c
    iget-object v0, p0, Lorg/zzf/core/activity/a;->a:Lorg/zzf/core/activity/ZhangPayActivity;

    invoke-static {v0}, Lorg/zzf/core/activity/ZhangPayActivity;->e(Lorg/zzf/core/activity/ZhangPayActivity;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method
