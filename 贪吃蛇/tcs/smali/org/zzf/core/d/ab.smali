.class public Lorg/zzf/core/d/ab;
.super Ljava/lang/Object;


# static fields
.field public static A:Ljava/lang/String;

.field public static B:Ljava/lang/String;

.field public static C:Ljava/lang/String;

.field public static D:Ljava/lang/String;

.field public static E:Ljava/lang/String;

.field public static F:Ljava/lang/String;

.field public static G:Ljava/lang/String;

.field public static H:Ljava/lang/String;

.field public static I:Ljava/lang/String;

.field public static J:Ljava/lang/String;

.field public static K:Ljava/lang/String;

.field public static L:Ljava/lang/String;

.field public static M:Ljava/lang/String;

.field public static N:Ljava/lang/String;

.field public static O:Ljava/lang/String;

.field public static P:Ljava/lang/String;

.field public static final a:Ljava/lang/String;

.field public static final b:Ljava/lang/String;

.field public static final c:Ljava/lang/String;

.field public static final d:Ljava/lang/String;

.field public static final e:Ljava/lang/String;

.field public static final f:Ljava/lang/String;

.field public static final g:Ljava/lang/String;

.field public static h:Z

.field public static i:Z

.field public static j:Z

.field public static k:Z

.field public static l:Z

.field public static m:Z

.field public static n:Z

.field public static o:Z

.field public static p:Z

.field public static q:Z

.field public static r:Z

.field public static s:Z

.field public static t:Z

.field public static u:Z

.field public static v:Ljava/lang/String;

.field public static w:Ljava/lang/String;

.field public static x:Ljava/lang/String;

.field public static y:Ljava/lang/String;

.field public static z:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    invoke-static {}, Lorg/zzf/core/a/a;->a()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/zzf/core/d/ab;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lorg/zzf/core/d/ab;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/zpayinit"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/zzf/core/d/ab;->b:Ljava/lang/String;

    sget-object v0, Lorg/zzf/core/d/ab;->a:Ljava/lang/String;

    sput-object v0, Lorg/zzf/core/d/ab;->c:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lorg/zzf/core/d/ab;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/zpayResultState?channelId=%s&orderId=%s&imei=%s&imsi=%s&state=%s"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/zzf/core/d/ab;->d:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lorg/zzf/core/d/ab;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/sp/ltpayResultState?orderId=%s&state=%s"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/zzf/core/d/ab;->e:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lorg/zzf/core/d/ab;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/zpayEntrancePayment?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "channelId=%s&priciePointId=%s&money=%s&cpparam=%s&appId=%s&qd=%s"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/zzf/core/d/ab;->f:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lorg/zzf/core/d/ab;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/sp/zzfPay.e?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "channelId=%s&priciePointId=%s&money=%s&cpparam=%s&appId=%s&qd=%s"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/zzf/core/d/ab;->g:Ljava/lang/String;

    sput-boolean v2, Lorg/zzf/core/d/ab;->h:Z

    sput-boolean v2, Lorg/zzf/core/d/ab;->i:Z

    sput-boolean v2, Lorg/zzf/core/d/ab;->j:Z

    sput-boolean v2, Lorg/zzf/core/d/ab;->k:Z

    sput-boolean v2, Lorg/zzf/core/d/ab;->l:Z

    sput-boolean v2, Lorg/zzf/core/d/ab;->m:Z

    sput-boolean v2, Lorg/zzf/core/d/ab;->n:Z

    sput-boolean v2, Lorg/zzf/core/d/ab;->o:Z

    sput-boolean v2, Lorg/zzf/core/d/ab;->p:Z

    sput-boolean v2, Lorg/zzf/core/d/ab;->q:Z

    sput-boolean v2, Lorg/zzf/core/d/ab;->r:Z

    sput-boolean v2, Lorg/zzf/core/d/ab;->s:Z

    sput-boolean v2, Lorg/zzf/core/d/ab;->t:Z

    sput-boolean v2, Lorg/zzf/core/d/ab;->u:Z

    const-string v0, "fingerprint"

    sput-object v0, Lorg/zzf/core/d/ab;->v:Ljava/lang/String;

    const-string v0, "diaplayResolution"

    sput-object v0, Lorg/zzf/core/d/ab;->w:Ljava/lang/String;

    const-string v0, "device"

    sput-object v0, Lorg/zzf/core/d/ab;->x:Ljava/lang/String;

    const-string v0, "cpu_api"

    sput-object v0, Lorg/zzf/core/d/ab;->y:Ljava/lang/String;

    const-string v0, "brand"

    sput-object v0, Lorg/zzf/core/d/ab;->z:Ljava/lang/String;

    const-string v0, "bootloader"

    sput-object v0, Lorg/zzf/core/d/ab;->A:Ljava/lang/String;

    const-string v0, "board"

    sput-object v0, Lorg/zzf/core/d/ab;->B:Ljava/lang/String;

    const-string v0, "hardware"

    sput-object v0, Lorg/zzf/core/d/ab;->C:Ljava/lang/String;

    const-string v0, "host"

    sput-object v0, Lorg/zzf/core/d/ab;->D:Ljava/lang/String;

    const-string v0, "id"

    sput-object v0, Lorg/zzf/core/d/ab;->E:Ljava/lang/String;

    const-string v0, "mac"

    sput-object v0, Lorg/zzf/core/d/ab;->F:Ljava/lang/String;

    const-string v0, "MaxCpuFreq"

    sput-object v0, Lorg/zzf/core/d/ab;->G:Ljava/lang/String;

    const-string v0, "CurCpuFreq"

    sput-object v0, Lorg/zzf/core/d/ab;->H:Ljava/lang/String;

    const-string v0, "MinCpuFreq"

    sput-object v0, Lorg/zzf/core/d/ab;->I:Ljava/lang/String;

    const-string v0, "CpuName"

    sput-object v0, Lorg/zzf/core/d/ab;->J:Ljava/lang/String;

    const-string v0, "MEM_UNUSED"

    sput-object v0, Lorg/zzf/core/d/ab;->K:Ljava/lang/String;

    const-string v0, "MEM_TOLAL"

    sput-object v0, Lorg/zzf/core/d/ab;->L:Ljava/lang/String;

    const-string v0, "SD_TOTAL"

    sput-object v0, Lorg/zzf/core/d/ab;->M:Ljava/lang/String;

    const-string v0, "SD_CUR"

    sput-object v0, Lorg/zzf/core/d/ab;->N:Ljava/lang/String;

    const-string v0, "iccid"

    sput-object v0, Lorg/zzf/core/d/ab;->O:Ljava/lang/String;

    const-string v0, "phonecompany"

    sput-object v0, Lorg/zzf/core/d/ab;->P:Ljava/lang/String;

    return-void
.end method
