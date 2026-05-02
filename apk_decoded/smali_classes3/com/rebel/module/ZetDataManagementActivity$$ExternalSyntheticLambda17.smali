.class public final synthetic Lcom/rebel/module/ZetDataManagementActivity$$ExternalSyntheticLambda17;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/rebel/module/ZetDataManagementActivity;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Ljava/io/File;

.field public final synthetic f$3:Ljava/io/File;


# direct methods
.method public synthetic constructor <init>(Lcom/rebel/module/ZetDataManagementActivity;Ljava/lang/String;Ljava/io/File;Ljava/io/File;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/rebel/module/ZetDataManagementActivity$$ExternalSyntheticLambda17;->f$0:Lcom/rebel/module/ZetDataManagementActivity;

    iput-object p2, p0, Lcom/rebel/module/ZetDataManagementActivity$$ExternalSyntheticLambda17;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/rebel/module/ZetDataManagementActivity$$ExternalSyntheticLambda17;->f$2:Ljava/io/File;

    iput-object p4, p0, Lcom/rebel/module/ZetDataManagementActivity$$ExternalSyntheticLambda17;->f$3:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .line 0
    iget-object v0, p0, Lcom/rebel/module/ZetDataManagementActivity$$ExternalSyntheticLambda17;->f$0:Lcom/rebel/module/ZetDataManagementActivity;

    iget-object v1, p0, Lcom/rebel/module/ZetDataManagementActivity$$ExternalSyntheticLambda17;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/rebel/module/ZetDataManagementActivity$$ExternalSyntheticLambda17;->f$2:Ljava/io/File;

    iget-object v3, p0, Lcom/rebel/module/ZetDataManagementActivity$$ExternalSyntheticLambda17;->f$3:Ljava/io/File;

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/rebel/module/ZetDataManagementActivity;->lambda$addBackupRow$15$com-src-module-ZetDataManagementActivity(Ljava/lang/String;Ljava/io/File;Ljava/io/File;Landroid/view/View;)V

    return-void
.end method
