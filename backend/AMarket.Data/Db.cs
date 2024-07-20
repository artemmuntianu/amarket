using System;
using System.Data;
using System.Threading.Tasks;

namespace AMarket.Data
{
    public static class Db
    {
        public static async Task<T> OpenAsync<T>(Func<DatabaseEntities, Task<T>> f)
        {
            try
            {
                using (var db = new DatabaseEntities())
                {
                    return await f(db);
                }
            }
            // DataException is the common exception for all EntityFramework exceptions  
            catch (DataException e)
            {
                /*  To see entity validation errors in Watch window type next
                    "((System.Data.Entity.Validation.DbEntityValidationException)e).EntityValidationErrors" */
                throw e;
            }
        }

        public static async Task OpenAsync(Func<DatabaseEntities, Task> f)
        {
            try
            {
                using (var db = new DatabaseEntities())
                {
                    await f(db);
                }
            }
            // DataException is the common exception for all EntityFramework exceptions  
            catch (DataException e)
            {
                /*  To see entity validation errors in Watch window type next
                    "((System.Data.Entity.Validation.DbEntityValidationException)e).EntityValidationErrors" */
                throw e;
            }
        }

        public static T Open<T>(Func<DatabaseEntities, T> f)
        {
            try
            {
                using (var db = new DatabaseEntities())
                {
                    return f(db);
                }
            }
            // DataException is the common exception for all EntityFramework exceptions  
            catch (DataException e)
            {
                /*  To see entity validation errors in Watch window type next
                    "((System.Data.Entity.Validation.DbEntityValidationException)e).EntityValidationErrors" */
                throw e;
            }
        }

        public static void Open(Action<DatabaseEntities> f)
        {
            try
            {
                using (var db = new DatabaseEntities())
                {
                    f(db);
                }
            }
            // DataException is the common exception for all EntityFramework exceptions  
            catch (DataException e)
            {
                /*  To see entity validation errors in Watch window type next
                    "((System.Data.Entity.Validation.DbEntityValidationException)e).EntityValidationErrors" */
                throw e;
            }
        }
    }
}
