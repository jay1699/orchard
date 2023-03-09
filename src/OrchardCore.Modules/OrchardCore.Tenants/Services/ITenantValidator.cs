using System.Collections.Generic;
using System.Threading.Tasks;
using OrchardCore.Mvc.ModelBinding;
using OrchardCore.Tenants.Models;
using OrchardCore.Tenants.ViewModels;

namespace OrchardCore.Tenants.Services
{
    public interface ITenantValidator
    {
        Task<IEnumerable<ModelError>> ValidateAsync(TenantModelBase model);
    }
}
