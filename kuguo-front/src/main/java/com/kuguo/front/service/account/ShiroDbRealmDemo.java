package com.kuguo.front.service.account;

import java.io.Serializable;

import javax.annotation.PostConstruct;

import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.AuthenticationInfo;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.authc.SimpleAuthenticationInfo;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.authc.credential.HashedCredentialsMatcher;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.authz.SimpleAuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;
import org.apache.shiro.util.ByteSource;
import org.springframework.beans.factory.annotation.Autowired;
import org.springside.modules.utils.Encodes;

import com.google.common.base.Objects;
import com.kuguo.front.entity.Users;

public class ShiroDbRealmDemo extends AuthorizingRealm {

	protected AccountServiceDemo accountService;

	@Override
	protected AuthorizationInfo doGetAuthorizationInfo(
			PrincipalCollection principals) {
		ShiroUser shiroUser = (ShiroUser) principals.getPrimaryPrincipal();
		Users user = accountService.findUserByName(shiroUser.name);
		SimpleAuthorizationInfo info = new SimpleAuthorizationInfo();
		info.addRoles(user.getRoleList());
		return info;
	}


	@Override
	protected AuthenticationInfo doGetAuthenticationInfo(
			AuthenticationToken authcToken) throws AuthenticationException {
		UsernamePasswordToken token = (UsernamePasswordToken)authcToken;
		Users user = accountService.findUserByName(token.getUsername());
		if(user != null) {
			byte[] salt = Encodes.decodeHex(user.getSalt());
			return new SimpleAuthenticationInfo(new ShiroUser(user.getId(),user.getName(),user.getUsername()), user.getPassword(),ByteSource.Util.bytes(salt),getName());
		} else {
			return null;
		}
		
	}

	@PostConstruct
	public void initCredentialsMatcher() {
		HashedCredentialsMatcher matcher = new HashedCredentialsMatcher(AccountServiceDemo.HASH_ALGORITHM);
		matcher.setHashIterations(AccountServiceDemo.HASH_INTERATIONS);
		
		setCredentialsMatcher(matcher);
	}
	
	@Autowired
	public void setAccountService(AccountServiceDemo accountService) {
		this.accountService = accountService;
	}
	
	public static class ShiroUser implements Serializable {

		public Long id;
		public String name;
		public String username;

		public ShiroUser(Long id, String name, String username) {
			this.id = id;
			this.name = name;
			this.username = username;
		}

		public String getUsername() {
			return username;
		}

		public String toString() {
			return name;
		}

		public int hashCode() {
			return Objects.hashCode(name);
		}

		public boolean equals(Object obj) {
			if (this == obj)
				return true;
			if (obj == null)
				return false;
			if (getClass() != obj.getClass())
				return false;
			ShiroUser other = (ShiroUser) obj;
			if (name == null) {
				if (other.name != null) {
					return false;
				}
			} else if (!name.equals(other.name)) {
				return false;
			}
			return true;
		}

	}

}
