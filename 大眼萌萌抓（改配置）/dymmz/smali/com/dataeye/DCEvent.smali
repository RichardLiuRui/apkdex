.class public Lcom/dataeye/DCEvent;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static onEvent(Ljava/lang/String;)V
    .locals 2
    .param p0, "eventId"    # Ljava/lang/String;

    .prologue
    new-instance v0, Lcom/dataeye/a/h;

    invoke-direct {v0}, Lcom/dataeye/a/h;-><init>()V

    invoke-static {p0}, Lcom/dataeye/c/ac;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/dataeye/a/h;->a:Ljava/lang/String;

    invoke-static {}, Lcom/dataeye/c/ac;->b()I

    move-result v1

    iput v1, v0, Lcom/dataeye/a/h;->e:I

    invoke-static {}, Lcom/dataeye/c/ac;->b()I

    move-result v1

    iput v1, v0, Lcom/dataeye/a/h;->f:I

    invoke-static {v0}, Lcom/dataeye/c/b;->a(Lcom/dataeye/a/h;)V

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "_DESelf_"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/dataeye/c/b;->c:Z

    if-eqz v0, :cond_0

    const-string v0, "DCEvent_onEvent"

    invoke-static {v0}, Lcom/dataeye/c/t;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static onEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "eventId"    # Ljava/lang/String;
    .param p1, "label"    # Ljava/lang/String;

    .prologue
    new-instance v0, Lcom/dataeye/a/h;

    invoke-direct {v0}, Lcom/dataeye/a/h;-><init>()V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v1, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p0}, Lcom/dataeye/c/ac;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/dataeye/a/h;->a:Ljava/lang/String;

    iput-object v1, v0, Lcom/dataeye/a/h;->c:Ljava/util/Map;

    invoke-static {}, Lcom/dataeye/c/ac;->b()I

    move-result v1

    iput v1, v0, Lcom/dataeye/a/h;->e:I

    invoke-static {}, Lcom/dataeye/c/ac;->b()I

    move-result v1

    iput v1, v0, Lcom/dataeye/a/h;->f:I

    invoke-static {v0}, Lcom/dataeye/c/b;->a(Lcom/dataeye/a/h;)V

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "_DESelf_"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/dataeye/c/b;->c:Z

    if-eqz v0, :cond_0

    const-string v0, "DCEvent_onEvent"

    invoke-static {v0}, Lcom/dataeye/c/t;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static onEvent(Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .param p0, "eventId"    # Ljava/lang/String;

    .prologue
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Lcom/dataeye/a/h;

    invoke-direct {v0}, Lcom/dataeye/a/h;-><init>()V

    invoke-static {p0}, Lcom/dataeye/c/ac;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/dataeye/a/h;->a:Ljava/lang/String;

    iput-object p1, v0, Lcom/dataeye/a/h;->c:Ljava/util/Map;

    invoke-static {}, Lcom/dataeye/c/ac;->b()I

    move-result v1

    iput v1, v0, Lcom/dataeye/a/h;->e:I

    invoke-static {}, Lcom/dataeye/c/ac;->b()I

    move-result v1

    iput v1, v0, Lcom/dataeye/a/h;->f:I

    invoke-static {v0}, Lcom/dataeye/c/b;->a(Lcom/dataeye/a/h;)V

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "_DESelf_"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/dataeye/c/b;->c:Z

    if-eqz v0, :cond_0

    const-string v0, "DCEvent_onEvent"

    invoke-static {v0}, Lcom/dataeye/c/t;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static onEventBeforeLogin(Ljava/lang/String;Ljava/util/Map;J)V
    .locals 2
    .param p0, "eventId"    # Ljava/lang/String;
    .param p2, "duration"    # J

    .prologue
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/dataeye/c/a;->g()Lcom/dataeye/a/a;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "Invoke DCEvent.onEventBeforeLogin() fail , DataEye SDK need init first!"

    invoke-static {v0}, Lcom/dataeye/c/u;->c(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget v0, Lcom/dataeye/c/b;->k:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    invoke-static {}, Lcom/dataeye/c/a;->g()Lcom/dataeye/a/a;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/dataeye/c/a;->g()Lcom/dataeye/a/a;

    move-result-object v0

    iget-boolean v0, v0, Lcom/dataeye/a/a;->c:Z

    if-nez v0, :cond_3

    new-instance v0, Lcom/dataeye/a/h;

    invoke-direct {v0}, Lcom/dataeye/a/h;-><init>()V

    const-string v1, "_DESelf_BeforeLogin_Event"

    iput-object v1, v0, Lcom/dataeye/a/h;->a:Ljava/lang/String;

    if-eqz p1, :cond_2

    const-string v1, "_DESelf_BeforeLogin_Event"

    invoke-interface {p1, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    iput-wide p2, v0, Lcom/dataeye/a/h;->b:J

    iput-object p1, v0, Lcom/dataeye/a/h;->c:Ljava/util/Map;

    invoke-static {}, Lcom/dataeye/c/ac;->b()I

    move-result v1

    iput v1, v0, Lcom/dataeye/a/h;->e:I

    invoke-static {}, Lcom/dataeye/c/ac;->b()I

    move-result v1

    iput v1, v0, Lcom/dataeye/a/h;->f:I

    invoke-static {v0}, Lcom/dataeye/c/b;->b(Lcom/dataeye/a/h;)V

    invoke-static {}, Lcom/dataeye/c/b;->n()V

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "_DESelf_"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/dataeye/c/b;->c:Z

    if-eqz v0, :cond_0

    const-string v0, "DCEvent_onEventBeforeLogin"

    invoke-static {v0}, Lcom/dataeye/c/t;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/util/HashMap;

    .end local p1    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .restart local p1    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "_DESelf_BeforeLogin_Event"

    invoke-interface {p1, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    const-string v0, "Invoke DCEvent.OnEventBeforeLogin ignored,  must invoke it  before invoke DCAccount.login"

    invoke-static {v0}, Lcom/dataeye/c/u;->c(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static onEventBegin(Ljava/lang/String;)V
    .locals 3
    .param p0, "eventId"    # Ljava/lang/String;

    .prologue
    new-instance v0, Lcom/dataeye/a/h;

    invoke-direct {v0}, Lcom/dataeye/a/h;-><init>()V

    invoke-static {p0}, Lcom/dataeye/c/ac;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/dataeye/a/h;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DC_Event_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/dataeye/a/h;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/dataeye/c/b;->a(Ljava/lang/String;Lcom/dataeye/a/h;)V

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "_DESelf_"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/dataeye/c/b;->c:Z

    if-eqz v0, :cond_0

    const-string v0, "DCEvent_onEventBegin"

    invoke-static {v0}, Lcom/dataeye/c/t;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static onEventBegin(Ljava/lang/String;Ljava/util/Map;)V
    .locals 4
    .param p0, "eventId"    # Ljava/lang/String;

    .prologue
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Lcom/dataeye/a/h;

    invoke-direct {v0}, Lcom/dataeye/a/h;-><init>()V

    invoke-static {p0}, Lcom/dataeye/c/ac;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/dataeye/a/h;->a:Ljava/lang/String;

    iput-object p1, v0, Lcom/dataeye/a/h;->c:Ljava/util/Map;

    invoke-static {}, Lcom/dataeye/c/ac;->b()I

    move-result v1

    int-to-long v2, v1

    iput-wide v2, v0, Lcom/dataeye/a/h;->b:J

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DC_Event_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/dataeye/a/h;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/dataeye/c/b;->a(Ljava/lang/String;Lcom/dataeye/a/h;)V

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "_DESelf_"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/dataeye/c/b;->c:Z

    if-eqz v0, :cond_0

    const-string v0, "DCEvent_onEventBegin"

    invoke-static {v0}, Lcom/dataeye/c/t;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static onEventBegin(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V
    .locals 3
    .param p0, "eventId"    # Ljava/lang/String;
    .param p2, "flag"    # Ljava/lang/String;

    .prologue
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Lcom/dataeye/a/h;

    invoke-direct {v0}, Lcom/dataeye/a/h;-><init>()V

    invoke-static {p0}, Lcom/dataeye/c/ac;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/dataeye/a/h;->a:Ljava/lang/String;

    iput-object p1, v0, Lcom/dataeye/a/h;->c:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DC_Event_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/dataeye/a/h;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Lcom/dataeye/c/ac;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/dataeye/c/b;->a(Ljava/lang/String;Lcom/dataeye/a/h;)V

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "_DESelf_"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/dataeye/c/b;->c:Z

    if-eqz v0, :cond_0

    const-string v0, "DCEvent_onEventBegin"

    invoke-static {v0}, Lcom/dataeye/c/t;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static onEventCount(Ljava/lang/String;I)V
    .locals 4
    .param p0, "eventId"    # Ljava/lang/String;
    .param p1, "count"    # I

    .prologue
    new-instance v0, Lcom/dataeye/a/h;

    invoke-direct {v0}, Lcom/dataeye/a/h;-><init>()V

    invoke-static {p0}, Lcom/dataeye/c/ac;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/dataeye/a/h;->a:Ljava/lang/String;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "_DESelf_Count"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v1, v0, Lcom/dataeye/a/h;->c:Ljava/util/Map;

    invoke-static {}, Lcom/dataeye/c/ac;->b()I

    move-result v1

    iput v1, v0, Lcom/dataeye/a/h;->e:I

    invoke-static {}, Lcom/dataeye/c/ac;->b()I

    move-result v1

    iput v1, v0, Lcom/dataeye/a/h;->f:I

    invoke-static {v0}, Lcom/dataeye/c/b;->a(Lcom/dataeye/a/h;)V

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "_DESelf_"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/dataeye/c/b;->c:Z

    if-eqz v0, :cond_0

    const-string v0, "DCEvent_onEventCount"

    invoke-static {v0}, Lcom/dataeye/c/t;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static onEventDuration(Ljava/lang/String;J)V
    .locals 3
    .param p0, "eventId"    # Ljava/lang/String;
    .param p1, "duration"    # J

    .prologue
    new-instance v0, Lcom/dataeye/a/h;

    invoke-direct {v0}, Lcom/dataeye/a/h;-><init>()V

    invoke-static {p0}, Lcom/dataeye/c/ac;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/dataeye/a/h;->a:Ljava/lang/String;

    iput-wide p1, v0, Lcom/dataeye/a/h;->b:J

    invoke-static {}, Lcom/dataeye/c/ac;->b()I

    move-result v1

    iput v1, v0, Lcom/dataeye/a/h;->e:I

    invoke-static {}, Lcom/dataeye/c/ac;->b()I

    move-result v1

    iput v1, v0, Lcom/dataeye/a/h;->f:I

    invoke-static {v0}, Lcom/dataeye/c/b;->a(Lcom/dataeye/a/h;)V

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "_DESelf_"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/dataeye/c/b;->c:Z

    if-eqz v0, :cond_0

    const-string v0, "DCEvent_onEventDuration"

    invoke-static {v0}, Lcom/dataeye/c/t;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static onEventDuration(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 2
    .param p0, "eventId"    # Ljava/lang/String;
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "duration"    # J

    .prologue
    new-instance v0, Lcom/dataeye/a/h;

    invoke-direct {v0}, Lcom/dataeye/a/h;-><init>()V

    invoke-static {p0}, Lcom/dataeye/c/ac;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/dataeye/a/h;->a:Ljava/lang/String;

    iput-wide p2, v0, Lcom/dataeye/a/h;->b:J

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v1, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v1, v0, Lcom/dataeye/a/h;->c:Ljava/util/Map;

    invoke-static {}, Lcom/dataeye/c/ac;->b()I

    move-result v1

    iput v1, v0, Lcom/dataeye/a/h;->e:I

    invoke-static {}, Lcom/dataeye/c/ac;->b()I

    move-result v1

    iput v1, v0, Lcom/dataeye/a/h;->f:I

    invoke-static {v0}, Lcom/dataeye/c/b;->a(Lcom/dataeye/a/h;)V

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "_DESelf_"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/dataeye/c/b;->c:Z

    if-eqz v0, :cond_0

    const-string v0, "DCEvent_onEventDuration"

    invoke-static {v0}, Lcom/dataeye/c/t;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static onEventDuration(Ljava/lang/String;Ljava/util/Map;J)V
    .locals 2
    .param p0, "eventId"    # Ljava/lang/String;
    .param p2, "duration"    # J

    .prologue
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Lcom/dataeye/a/h;

    invoke-direct {v0}, Lcom/dataeye/a/h;-><init>()V

    invoke-static {p0}, Lcom/dataeye/c/ac;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/dataeye/a/h;->a:Ljava/lang/String;

    iput-wide p2, v0, Lcom/dataeye/a/h;->b:J

    iput-object p1, v0, Lcom/dataeye/a/h;->c:Ljava/util/Map;

    invoke-static {}, Lcom/dataeye/c/ac;->b()I

    move-result v1

    iput v1, v0, Lcom/dataeye/a/h;->e:I

    invoke-static {}, Lcom/dataeye/c/ac;->b()I

    move-result v1

    iput v1, v0, Lcom/dataeye/a/h;->f:I

    invoke-static {v0}, Lcom/dataeye/c/b;->a(Lcom/dataeye/a/h;)V

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "_DESelf_"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/dataeye/c/b;->c:Z

    if-eqz v0, :cond_0

    const-string v0, "DCEvent_onEventDuration"

    invoke-static {v0}, Lcom/dataeye/c/t;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static onEventEnd(Ljava/lang/String;)V
    .locals 3
    .param p0, "eventId"    # Ljava/lang/String;

    .prologue
    new-instance v0, Lcom/dataeye/a/h;

    invoke-direct {v0}, Lcom/dataeye/a/h;-><init>()V

    invoke-static {p0}, Lcom/dataeye/c/ac;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/dataeye/a/h;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DC_Event_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/dataeye/a/h;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/dataeye/c/b;->b(Ljava/lang/String;Lcom/dataeye/a/h;)V

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "_DESelf_"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/dataeye/c/b;->c:Z

    if-eqz v0, :cond_0

    const-string v0, "DCEvent_onEventEnd"

    invoke-static {v0}, Lcom/dataeye/c/t;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static onEventEnd(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "eventId"    # Ljava/lang/String;
    .param p1, "flag"    # Ljava/lang/String;

    .prologue
    new-instance v0, Lcom/dataeye/a/h;

    invoke-direct {v0}, Lcom/dataeye/a/h;-><init>()V

    invoke-static {p0}, Lcom/dataeye/c/ac;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/dataeye/a/h;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DC_Event_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/dataeye/a/h;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/dataeye/c/ac;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/dataeye/c/b;->b(Ljava/lang/String;Lcom/dataeye/a/h;)V

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "_DESelf_"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/dataeye/c/b;->c:Z

    if-eqz v0, :cond_0

    const-string v0, "DCEvent_onEventEnd"

    invoke-static {v0}, Lcom/dataeye/c/t;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static onEventEnd(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V
    .locals 3
    .param p0, "eventId"    # Ljava/lang/String;
    .param p2, "flag"    # Ljava/lang/String;

    .prologue
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Lcom/dataeye/a/h;

    invoke-direct {v0}, Lcom/dataeye/a/h;-><init>()V

    invoke-static {p0}, Lcom/dataeye/c/ac;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/dataeye/a/h;->a:Ljava/lang/String;

    iput-object p1, v0, Lcom/dataeye/a/h;->c:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DC_Event_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/dataeye/a/h;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Lcom/dataeye/c/ac;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/dataeye/c/b;->b(Ljava/lang/String;Lcom/dataeye/a/h;)V

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "_DESelf_"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/dataeye/c/b;->c:Z

    if-eqz v0, :cond_0

    const-string v0, "DCEvent_onEventEnd"

    invoke-static {v0}, Lcom/dataeye/c/t;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
